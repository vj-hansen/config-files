
<https://rogerdudler.github.io/git-guide/>


### gitignore

Remove the files from the index (not the actual files in the working copy)

```sh

# Fix gitignore
git rm -r --cached .
git add .
git commit -m "Clean up ignored files"

git restore 

git difftool 

# fix commits 
git log -oneline # get hash git add git commit -m “msg” squash commits fix commit msgs 
git rebase -i 
git push -u origin -force
```
