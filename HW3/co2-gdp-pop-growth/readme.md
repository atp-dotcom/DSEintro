# Annual change in GDP, population and CO₂ emissions - Data package

This data package contains the data that powers the chart ["Annual change in GDP, population and CO₂ emissions"](https://ourworldindata.org/grapher/co2-gdp-pop-growth?v=1&csvType=full&useColumnShortNames=false) on the Our World in Data website.

## CSV Structure

The high level structure of the CSV file is that each row is an observation for an entity (usually a country or region) and a timepoint (usually a year).

The first two columns in the CSV file are "Entity" and "Code". "Entity" is the name of the entity (e.g. "United States"). "Code" is the OWID internal entity code that we use if the entity is a country or region. For normal countries, this is the same as the [iso alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code of the entity (e.g. "USA") - for non-standard countries like historical countries these are custom codes.

The third column is either "Year" or "Day". If the data is annual, this is "Year" and contains only the year as an integer. If the column is "Day", the column contains a date string in the form "YYYY-MM-DD".

The remaining columns are the data columns, each of which is a time series. If the CSV data is downloaded using the "full data" option, then each column corresponds to one time series below. If the CSV data is downloaded using the "only selected data visible in the chart" option then the data columns are transformed depending on the chart type and thus the association with the time series might not be as straightforward.

## Metadata.json structure

The .metadata.json file contains metadata about the data package. The "charts" key contains information to recreate the chart, like the title, subtitle etc.. The "columns" key contains information about each of the columns in the csv, like the unit, timespan covered, citation for the data etc..

## About the data

Our World in Data is almost never the original producer of the data - almost all of the data we use has been compiled by others. If you want to re-use data, it is your responsibility to ensure that you adhere to the sources' license and to credit them correctly. Please note that a single time series may have more than one source - e.g. when we stich together data from different time periods by different producers or when we calculate per capita metrics using population data from a second source.

### How we process data at Our World In Data
All data and visualizations on Our World in Data rely on data sourced from one or several original data providers. Preparing this original data involves several processing steps. Depending on the data, this can include standardizing country names and world region definitions, converting units, calculating derived indicators such as per capita measures, as well as adding or adapting metadata such as the name or the description given to an indicator.
[Read about our data pipeline](https://docs.owid.io/projects/etl/)

## Detailed information about each time series


## Population
Last updated: January 24, 2025  
Next update: January 2026  
Date range: 1961–2023  
Unit: annual %  


### How to cite this data

#### In-line citation
If you have limited space (e.g. in data visualizations), you can use this abbreviated in-line citation:  
United Nations Population Division, Eurostat, national statistical offices, and United Nations Statistics Division, via World Bank (2025) – processed by Our World in Data

#### Full citation
United Nations Population Division, Eurostat, national statistical offices, and United Nations Statistics Division, via World Bank (2025) – processed by Our World in Data. “Population” [dataset]. United Nations Population Division, Eurostat, national statistical offices, and United Nations Statistics Division, via World Bank, “World Development Indicators” [original data].
Source: United Nations Population Division, Eurostat, national statistical offices, and United Nations Statistics Division, via World Bank (2025) – processed by Our World In Data

### How is this data described by its producer - United Nations Population Division, Eurostat, national statistical offices, and United Nations Statistics Division, via World Bank (2025)?
Annual population growth rate for year t is the exponential rate of growth of midyear population from year t-1 to t, expressed as a percentage . Population is based on the de facto definition of population, which counts all residents regardless of legal status or citizenship.

### Statistical concept and methodology:
Total population growth rates are calculated on the assumption that rate of growth is constant between two points in time. The growth rate is computed using the exponential growth formula:

r = ln(pn/p0)/n,

where r is the exponential rate of growth, ln() is the natural logarithm, pn is the end period population, p0 is the beginning period population, and n is the number of years in between. Note that this is not the geometric growth rate used to compute compound growth over discrete periods.

For information on total population from which the growth rates are calculated, see total population (SP.POP.TOTL).

### Source

#### United Nations Population Division, Eurostat, national statistical offices, and United Nations Statistics Division, via World Bank – World Development Indicators
Retrieved on: 2025-01-24  
Retrieved from: https://data.worldbank.org/indicator/SP.POP.GROW  


## GDP
Last updated: January 24, 2025  
Next update: January 2026  
Date range: 1961–2023  
Unit: annual %  


### How to cite this data

#### In-line citation
If you have limited space (e.g. in data visualizations), you can use this abbreviated in-line citation:  
World Bank and OECD national accounts (2025) – processed by Our World in Data

#### Full citation
World Bank and OECD national accounts (2025) – processed by Our World in Data. “GDP” [dataset]. World Bank and OECD national accounts, “World Development Indicators” [original data].
Source: World Bank and OECD national accounts (2025) – processed by Our World In Data

### How is this data described by its producer - World Bank and OECD national accounts (2025)?
Annual percentage growth rate of GDP at market prices based on constant local currency. Aggregates are based on constant 2015 prices, expressed in U.S. dollars. GDP is the sum of gross value added by all resident producers in the economy plus any product taxes and minus any subsidies not included in the value of the products. It is calculated without making deductions for depreciation of fabricated assets or for depletion and degradation of natural resources.

### Limitations and exceptions:
Each industry's contribution to growth in the economy's output is measured by growth in the industry's value added. In principle, value added in constant prices can be estimated by measuring the quantity of goods and services produced in a period, valuing them at an agreed set of base year prices, and subtracting the cost of intermediate inputs, also in constant prices. This double-deflation method requires detailed information on the structure of prices of inputs and outputs.

In many industries, however, value added is extrapolated from the base year using single volume indexes of outputs or, less commonly, inputs. Particularly in the services industries, including most of government, value added in constant prices is often imputed from labor inputs, such as real wages or number of employees. In the absence of well defined measures of output, measuring the growth of services remains difficult.

Moreover, technical progress can lead to improvements in production processes and in the quality of goods and services that, if not properly accounted for, can distort measures of value added and thus of growth. When inputs are used to estimate output, as for nonmarket services, unmeasured technical progress leads to underestimates of the volume of output. Similarly, unmeasured improvements in quality lead to underestimates of the value of output and value added. The result can be underestimates of growth and productivity improvement and overestimates of inflation.

Informal economic activities pose a particular measurement problem, especially in developing countries, where much economic activity is unrecorded. A complete picture of the economy requires estimating household outputs produced for home use, sales in informal markets, barter exchanges, and illicit or deliberately unreported activities. The consistency and completeness of such estimates depend on the skill and methods of the compiling statisticians.

Rebasing of national accounts can alter the measured growth rate of an economy and lead to breaks in series that affect the consistency of data over time. When countries rebase their national accounts, they update the weights assigned to various components to better reflect current patterns of production or uses of output. The new base year should represent normal operation of the economy - it should be a year without major shocks or distortions. Some developing countries have not rebased their national accounts for many years. Using an old base year can be misleading because implicit price and volume weights become progressively less relevant and useful.

To obtain comparable series of constant price data for computing aggregates, the World Bank rescales GDP and value added by industrial origin to a common reference year. Because rescaling changes the implicit weights used in forming regional and income group aggregates, aggregate growth rates are not comparable with those from earlier editions with different base years. Rescaling may result in a discrepancy between the rescaled GDP and the sum of the rescaled components. To avoid distortions in the growth rates, the discrepancy is left unallocated. As a result, the weighted average of the growth rates of the components generally does not equal the GDP growth rate.

### Statistical concept and methodology:
Gross domestic product (GDP) represents the sum of value added by all its producers. Value added is the value of the gross output of producers less the value of intermediate goods and services consumed in production, before accounting for consumption of fixed capital in production. The United Nations System of National Accounts calls for value added to be valued at either basic prices (excluding net taxes on products) or producer prices (including net taxes on products paid by producers but excluding sales or value added taxes). Both valuations exclude transport charges that are invoiced separately by producers. Total GDP is measured at purchaser prices. Value added by industry is normally measured at basic prices. When value added is measured at producer prices.

Growth rates of GDP and its components are calculated using the least squares method and constant price data in the local currency. Constant price in U.S. dollar series are used to calculate regional and income group growth rates. Local currency series are converted to constant U.S. dollars using an exchange rate in the common reference year.

### Source

#### World Bank and OECD national accounts – World Development Indicators
Retrieved on: 2025-01-24  
Retrieved from: https://data.worldbank.org/indicator/NY.GDP.MKTP.KD.ZG  


## CO₂ emissions
Annual percentage growth in total emissions of carbon dioxide (CO₂), excluding land-use change.
Last updated: November 21, 2024  
Next update: November 2025  
Date range: 1751–2023  
Unit: %  


### How to cite this data

#### In-line citation
If you have limited space (e.g. in data visualizations), you can use this abbreviated in-line citation:  
Global Carbon Budget (2024) – with major processing by Our World in Data

#### Full citation
Global Carbon Budget (2024) – with major processing by Our World in Data. “CO₂ emissions” [dataset]. Global Carbon Project, “Global Carbon Budget” [original data].
Source: Global Carbon Budget (2024) – with major processing by Our World In Data

### What you should know about this data
* This data is based on territorial emissions, meaning the emissions produced within a country's borders, but not those from imported goods. For example, emissions from imported steel are counted in the country where the steel is produced. To learn more and look at emissions adjusted for trade, read our article: [How do CO₂ emissions compare when we adjust for trade?](https://ourworldindata.org/consumption-based-co2)
* Emissions from international aviation and shipping are not included in the data for any individual country or region. They are only counted in the global total.

### Source

#### Global Carbon Project – Global Carbon Budget
Retrieved on: 2024-11-21  
Retrieved from: https://globalcarbonbudget.org/  

#### Notes on our processing step for this indicator
- Global emissions are converted from tonnes of carbon to tonnes of carbon dioxide (CO₂) using a factor of 3.664. This is the conversion factor [recommended by the Global Carbon Project](https://globalcarbonbudgetdata.org/downloads/jGJH0-data/Global+Carbon+Budget+v2024+Dataset+Descriptions.pdf). It reflects that one tonne of carbon, when fully oxidized, forms 3.664 tonnes of CO₂, based on the relative molecular weights of carbon and oxygen in CO₂.
- Emissions from the 1991 Kuwaiti oil fires are included in Kuwait's emissions for that year.



    