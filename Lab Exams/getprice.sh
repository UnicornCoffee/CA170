#!/bin/sh

symbol=$1 

wget -q -O - "https://bigcharts.marketwatch.com/quickchart/quickchart.asp?symb=$symbol" | tr -d '\t\n\r' | grep -o 'Last:.*</div></td><td class="change">' | sed 's/[^0-9.,]*//g' | tr -d ','
