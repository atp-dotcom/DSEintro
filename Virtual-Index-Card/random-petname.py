# Virtual Index Card
# Name: Anibely Torres
# Fun Fact: I am a construction and lego fan! I can build sets in record time (not really, but I go crazy!)

# Another fun fact is that I found this script on an old repo from a previous school class.

# Import the random library: this library allows me to shuffle the names, and last names
import random  

# Define pet names
names = ["Fluffy", "Sparky", "Shadow", "Whisker", "Coco", 
            "Luna", "Oreo", "Peanut", "Nibbles", "Mochi"]

# Define last names
lastname = ["kins", "ster", "boo", "tail", "paws", 
            "bun", "bean", "chops", "fluff", "nose"]

# Create all possible unique name combinations (name + last name)
names = [n + ln for n in names for ln in lastname]

# Randomly shuffle the list so names come in a random order
random.shuffle(names)

# Function to return a unique pet name
def get_name():
    if names:                   # Check if there are still names left in the list
        return names.pop()      # Remove and return the last name
    else:
        raise Exception("No more unique names available!")  # Stop when all conbinations have been made

# Example: print 2 unique pet names
# for _ in range(2):  
#     print("Your pet’s name could be:", get_name())  # Get and print a unique pet name
