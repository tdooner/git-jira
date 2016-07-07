# git-jira

## Installation

```bash
# 1. Install ruby (instructions omitted)

# 2. Install the go-jira command-line utility
#    https://github.com/Netflix-Skunkworks/go-jira/releases/tag/v0.1.2
sudo wget -O /usr/local/bin/jira \
  https://github.com/Netflix-Skunkworks/go-jira/releases/download/v0.1.2/jira-linux-amd64
sudo chmod +x /usr/local/bin/jira

# 3. Configure Jira client
mkdir ~/.jira.d
echo 'endpoint: https://brigade.atlassian.net' > ~/.jira.d/config.yml
jira login # (if your username is wrong, you might need a "user:" key in
           # config.yml)

# 3. Install this gem and rehash if necessary
[sudo] gem install git-jira
rbenv rehash

# 4. (Optional) You may want to alias it to "git j" as I do
git config --global alias.j jira
```
