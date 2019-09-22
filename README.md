# dotfiles
dotfiles for synchronized envirnoment.

## Deploy
To deploy dotfiles in home directory without project directory:
```
cd ~
git init .
git remote add origin git@github.com:user/repo.git
git fetch origin
git checkout master

# git checkout -f master (would overwrite existing dotfiles)
```
