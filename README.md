## Website or Domain Operating System Mass Scanner
Script that checks server's operating systems based on specified list of websites.

The solution utilizes Wappalyzer CLI docker container.

## Requirements:
* Linux / Bash
* Docker
* jq, awk & pr installed

## Running
* Clone this repo: `git clone github.com/sxiii/domain-os-scan`
* Enter the folder: `cd domain-os-scan`
* Edit the file `scan-top.sh`, replacing the array "ntweb" with the websites that you want to scan
* Give permissions to run the scripts if needed: `chmod +x ./*sh`
* Run actual docker container wappalyzer scan `./scan-top.sh`
* Process results: `./process-top.sh`

## Bonus
Results are saved as JSON files into the ./json subfolder.

## How the results look?

