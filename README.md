This repository contain Dockerfile which is to build Go amd64 runtime images.

### Installed packages

- `wget` this required for downloading tar file. used only once and removed after it.
- `git` & `mercurial` this is required by `go get` command for cloning packcage.
- `ca-certificates` fix issue HTTPS error while cloning package repository.
