
<https://rogerdudler.github.io/git-guide/>


### gitignore

Remove the files from the index (not the actual files in the working copy)

```sh
git rm -r --cached .

git add .

git commit -m "Clean up ignored files"
```
