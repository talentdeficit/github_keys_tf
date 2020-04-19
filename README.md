## some terraform to add gpg and ssh keys to github

### prereqs

* terraform
* a gpg key exported in armor format to some temp file
* an ssh key
* a github api token

### use

```
$ cd ssh_key
$ terraform init
$ terraform apply \
  -var 'ssh_key_title=some_title_here' \
  -var 'ssh_key_file_path=path/to/ssh/key.pub'
```

```
$ cd gpg_key
$ terraform init
$ terraform apply \
  -var 'gpg_key_path=path/to/gpg/key'
```