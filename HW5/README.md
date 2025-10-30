# Homework #5: Scraping and API Data Acquisition with Ethics in Mind
## DSE 511 - Fall 2025

Homework description: The task for this homework was to collect and analyze a small dataset from the public web, using either an API or scraping. I chose to do option a, which was to use a well documented API (Reddit), and collected  at least 100 observations with 6 attributes. 

### Structure

In this folder, you will find:

- /data folder: The folder that contains the raw dataset used in the notebook. 
- data_raw: The file that contains the raw dataset.
- data_clean: The file that contains the cleaned version of the data_raw.
- scraping_api_ipynb: The file that contains the code.

> To run the notebook please refer to the file /scraping_api.ipynb

### How to run:

First create and activate environment, as follows:

`micromamba env create -f environment.yml`
`micromamba activate dse-intro`

Important note: On this project I introduce an environment (micromamba), refer to the following resources for guidance:

https://mamba.readthedocs.io/en/latest/user_guide/mamba.html
https://mamba.readthedocs.io/en/latest/user_guide/concepts.html#concepts

Note: If you know conda, you know micromamba.


Note: For reference, I use micromamba as my environment CLI tool manager.

> To run the notebook please refer to the file /scraping_api.ipynb


Source of the data (with link)

How to reproduce your run

Any limitations



### Ethics Reflection 

- Was scraping this site ethical/legal? How did you check?

- What privacy risks are posed by API-collected data?

Some of the risks by collecting data over APIs is 

- What to watch out for?

Something to watch out for when taking into consideration when scraping things from any source, it's to distinguish the veracity of the data itselt, while most places contain a disclaimer about the source and quality of their data, it is hard to verify all the information, especiallu if it ever changing and a large quantity of it. While most subreddits and posts on reddit are moderated, it is worth noting that posts and comments under the post might contain unverified information, such as opinions, and reactions to the post itselt. 


### Limitations



### Other: Useful websites for this assignment:

[Authenticating via OAuth].(https://praw.readthedocs.io/en/latest/getting_started/authentication.html#password-flow)

