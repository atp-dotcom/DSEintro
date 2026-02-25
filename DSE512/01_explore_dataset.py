#!/usr/bin/env python3

import pandas as pd
import sys
import glob
from datetime import datetime
import socket
import os


stage = sys.argv[1]


# =========================
# VALIDATION
# =========================
if stage == "validate":

    csv_path = sys.argv[2]
    df = pd.read_csv(csv_path)

    df.columns = df.columns.str.strip()

    required = ["Date", "Prec", "Inf_Coeff"]

    for col in required:
        if col not in df.columns:
            raise ValueError(f"Missing column: {col}. Found: {list(df.columns)}")

    print("Validation passed: structure OK")

# =========================
# SIMULATION (ARRAY)
# =========================
elif stage == "simulate":

    csv_path = sys.argv[2]
    task_id = int(sys.argv[3])

    df = pd.read_csv(csv_path)
    df.columns = df.columns.str.strip()

    try:
        row = df.iloc[task_id - 1]
    except IndexError:
        raise IndexError(f"Task ID {task_id} exceeds dataset size")

    date = row["Date"]
    prec = float(row["Prec"])
    infil = float(row["Inf_Coeff"])

    # INTENTIONAL FAILURE CHECK
    if infil < 0 or infil > 1:
        raise ValueError(
            f"Infiltration must be between 0 and 1, got {infil}"
        )

    runoff = prec * (1 - infil)

    os.makedirs("outputs", exist_ok=True)

    with open(f"outputs/output_{task_id}.txt", "w") as f:
        f.write(f"""Task_ID: {task_id}
Date: {date}
Rainfall(mm): {prec}
Infiltration: {infil}
Runoff(mm): {runoff}
Timestamp: {datetime.now()}
Hostname: {socket.gethostname()}
""")

    print(f"Simulation {task_id} complete")

# =========================
# AGGREGATION
# =========================
elif stage == "aggregate":

    runoffs = []
    files = glob.glob("outputs/output_*.txt")

    for file_path in files:
        with open(file_path, "r") as file:
            for line in file:
                if "Runoff" in line:
                    runoffs.append(float(line.split(":")[1]))

    if len(runoffs) == 0:
        raise RuntimeError("No successful simulation outputs found")

    mean_runoff = sum(runoffs) / len(runoffs)

    with open("ensemble_stats.txt", "w") as f:
        f.write(f"Mean_Runoff(mm): {mean_runoff}\n")
        f.write(f"Successful_Runs: {len(runoffs)}\n")

    print("Aggregation complete")

# =========================
# CLASSIFICATION
# =========================
elif stage == "classify":

    with open("ensemble_stats.txt", "r") as f:
        lines = f.readlines()

    mean_runoff = float(lines[0].split(":")[1])

    if mean_runoff < 15:
        risk = "Low"
    elif 15 <= mean_runoff <= 30:
        risk = "Medium"
    else:
        risk = "High"

    with open("risk_classification.txt", "w") as f:
        f.write(f"""Mean Runoff(mm): {mean_runoff}
Flood Risk Level: {risk}
Timestamp: {datetime.now()}
Hostname: {socket.gethostname()}
""")

    print("Risk classification complete")


else:
    raise ValueError("Unknown stage argument")
