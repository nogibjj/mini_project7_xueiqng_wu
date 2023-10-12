[![CI](https://github.com/nogibjj/mini_project7_xueiqng_wu/actions/workflows/cicd.yml/badge.svg)](https://github.com/nogibjj/mini_project7_xueiqng_wu/actions/workflows/cicd.yml)

## Purpose
The goal of this project is to add command line to the ETL including Cloud infrastructure. This project packs everything together for all the ETL process so that other users can directly pip install and run command 

Dataset source: Birth data from github (https://github.com/fivethirtyeight/data)

Birth data: https://github.com/fivethirtyeight/data/blob/master/births/US_births_2000-2014_SSA.csv?raw=true


## Items Included
1. external data (birth data, split1 & split2)
1. mylib
    1. extract.py
    1. transform_load.py
    1. query.py
1. main.py, test_main.py
1. setup.py, setup.sh
1. .env (secrets and variables on Github)

## Steps
1. Make script into a package called ETLpipelineXueqingWu : whole package includes mylib and main.py. my lib is a package inside the whole ETLpipelineXueqingWu package 
    1. Create the package
    1. Install Requirements
    1. Create Entry Point (making the command line to make the package executable (Running main.py using ETL query. / Replace Python main.py with ETL_query))
1. Main.py 
    add help line to user who uses it 
    (etl_query —help)
1. Makefile
Make everything using etl_query command line
1. Requirements
setuptools
1. cicd.yml
Add “Install local package” (install your script, which is a package) 
The difference between install package and install local package is that, install package install the requirements.txt, install local package is installing script


## Workflow
<img width="981" alt="Workflow" src="https://github.com/nogibjj/mini_project6_xueqing_wu/assets/47194238/8075d9ea-c034-4b25-a12b-76f2c982b43d">

## Tests
<img width="952" alt="Test" src="https://github.com/nogibjj/mini_project6_xueqing_wu/assets/47194238/13d3dfc8-a0ca-4540-afef-cfa7f1207bee">

