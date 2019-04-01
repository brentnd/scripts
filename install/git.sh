#!/bin/bash

git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global core.excludesfile ~/.gitignore_global

cat > ~/.gitignore_global << EOF
# IntelliJ IDE #
################
.idea

# Compiled source #
###################
*.com
*.class
*.dll
*.exe
*.o
*.so

# Logs and databases #
######################
*.log
*.sql
*.sqlite

# OS generated files #
######################
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

EOF
