# DIGIT!
**digit** is a CLI to help you to dig into git history and make it **grepable**.

## Setup
Install digit is easy as one command line:
>$: curl -fsSL raw.githubusercontent.com/dzway/digit/master/get-digit.sh -o get-digit.sh && sh get-digit.sh

## Run
To run digit just go straight to your repository and run:

> $: digit dig

If you know what you want to find you can also grep that already:

> $: digit dig | grep -E "pattern"

A great addition for this tool is [gf](https://github.com/tomnomnom/gf) from [@tomnomnom](https://twitter.com/tomnomnom).
Find an IP pattern:

> $: digit dig | gf ip

## Issues
This is an independent free project, any issues or improvements, are welcome here: [issues](https://github.com/dzway/digit/issues).