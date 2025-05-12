# DIGIT!
**digit** is a CLI to help you to dig into git history and make it **grepable**.

## Setup
Install digit is easy as one command line:
>$: curl -fsSL raw.githubusercontent.com/dzway/digit/master/get-digit.sh -o get-digit.sh && sh get-digit.sh

## Features

- Searches through all Git objects in a repository
- Can find various types of sensitive information:
  - IP addresses
  - Hostnames
  - Passwords
  - Secrets
  - Tokens
  - Keys
  - Auth credentials
  - Hash values
- Displays file names and full line context for better understanding

## Usage

```bash
# Display help
./digit

# Display version
./digit -v

# Search for all sensitive information
./digit --all

# Search for specific types
./digit --ip --password --token

# Search with a custom pattern
./digit --pattern "your-regex-pattern"
```

## Available Search Flags

- `--ip`: Search for IP addresses
- `--host`: Search for hostnames
- `--password`: Search for passwords
- `--secret`: Search for secrets
- `--token`: Search for tokens
- `--key`: Search for keys
- `--auth`: Search for auth credentials
- `--hash`: Search for hash values
- `--all`: Search for all patterns
- `--pattern`: Search for a custom regex pattern
- `-v`: Display version information

## Output Format

When digit finds a match, it displays:
- The Git object hash
- The file name associated with the object
- The type of sensitive information found
- The matched content
- The full line containing the match for context

Example output:
```
Object: 1a2b3c4d5e6f7g8h9i0j1k2l3m4n5o6p7q8r9s0t
File: src/config.js
Password: password="secret123" (in: const config = { username: "admin", password="secret123", domain: "example.com" })
IP: 192.168.1.1 (in: const serverIP = "192.168.1.1";)
```

This format provides complete context for each match, making it easier to understand how and where the sensitive information is being used.

## Issues

This is an independent free project, any issues or improvements, are welcome here: [issues](https://github.com/dzway/digit/issues).


## License

MIT
