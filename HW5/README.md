# Homework #5: Scraping and API Data Acquisition with Ethics in Mind
## DSE 511 - Fall 2025

Homework description: The task for this homework was to collect and analyze a small dataset from the public web, using either an API or scraping. I chose to do option a, which was to use a well documented API (NewsAPI), and collected  at least 100 observations with 6 attributes. 

### Structure

In this folder, you will find:

- /data folder: The folder that contains the raw dataset used in the notebook. 
- news_api_large_dataset.csv: The file that contains the raw dataset.
- news_scraping.ipynb: The file that contains the code.

> To run the notebook please refer to the file /news_scraping.ipynb

### How to run:

First create and activate environment, as follows:

`micromamba env create -f environment.yml`
`micromamba activate dse-intro`

Important note: On this project I introduce an environment (micromamba), refer to the following resources for guidance:

https://mamba.readthedocs.io/en/latest/user_guide/mamba.html
https://mamba.readthedocs.io/en/latest/user_guide/concepts.html#concepts

Note: If you know conda, you know micromamba (phrase taken from mamba)

Note: For reference, I use micromamba as my environment CLI tool manager. For this project is not necessary, but I wanted to introduce the idea to my git account. 

> To run the notebook please refer to the file /scraping_api.ipynb

### Ethics Reflection 

- Was scraping this site ethical/legal? How did you check?

Scraping NewsAPI is generally neither legal nor ethical, because the service is governed by Terms of Service that require using a licensed API key and prohibit bypassing rate limits, redistributing raw data, or replicating the service through scraping. Ethically, scraping would undermine the business model, impose unauthorized load, and violate explicit usage agreements. To determine this, the appropriate method is reviewing the site's Terms of Service, API documentation, and robots.txt to see what forms of access are permitted—no scraping is required to verify whether scraping itself is allowed.

- What privacy risks are posed by API-collected data?

Although NewsAPI provides public news content, the privacy risks arise from how developers use and store the data. API calls generate logs that can reveal user interests, search behavior, and reading patterns, which may become sensitive if tied to identifiable users. Storing fetched articles or access logs increases exposure in the event of a breach, and API key leakage can let attackers monitor or hijack requests. Developers must also consider compliance obligations (e.g., GDPR/CCPA) because user-level metadata, even on public articles, can constitute personal data. Secure key handling, minimizing retention, and avoiding identifiable logging mitigate most of these risks.

- What to watch out for?

Something to watch out for when taking into consideration when scraping things from any source, it's to distinguish the veracity of the data itselt, while most places contain a disclaimer about the source and quality of their data, it is hard to verify all the information, especiallu if it ever changing and a large quantity of it. While news outlets goals should be information, there is also the chance of misinfromation and/or bias in news, so it is important to verify and cross reference information on the news. 

### Limitations

APIs like NewsAPI face several operational and structural limitations. They often impose rate limits, restrict certain features on free plans as observed in this assigment, and prohibit exposing API keys publicly (which is a good practice), which can hinder large-scale or client-side applications. Coverage is also incomplete: not all news sources are indexed equally, metadata may be inconsistent, and “content” fields sometimes provide only partial article text. NewsAPI also disclaims responsibility for the accuracy and timeliness of aggregated content, and its terms limit how you can redistribute or reuse data, especially regarding copyright, attribution, and competing services.
