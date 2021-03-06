#!/bin/bash

shopt -s expand_aliases
source /home/fk652/.bashrc

# load up necessary modules
echo "loading modules"
module load python/gnu/3.6.5

# installing dependencies, assumes pandas and numpy aready installed
echo "installing necessary modules"
pip install --user yfinance
pip install --user beautifulsoup4
pip install --user requests

cd ../../datasets/'Stock Data'

# running the scrape script
echo "running scrape"
python ../../spark/'Stock Data'/'S&P_scrape.py'

echo "done"
