# git-jira

If you don't work at Brigade, it's probable that your JIRA installation is
incompatible because of the difference in state/transition names.

## Usage
### git jira start web-1234
Creates a branch named "web-1234", claims ownership of the story, and marks the story as "In Progress".

### git jira ci
(ci = commit)

When on a story branch, this command will create a commit prepopulated with the
message title as well as "[Finishes WEB-1234]".

### git jira cleanup
Removes any story branches for resolved stories.

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
