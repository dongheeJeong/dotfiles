# dotfiles
dotfiles for synchronized envirnoment.

## Deploy
To deploy dotfiles in home directory without project directory:
```
cd ~
git init .
git remote add origin https://github.com/dongheeJeong/dotfiles.git
git fetch origin
git checkout master

# git checkout -f master (would overwrite existing dotfiles)
```
