### Run Oracle in Docker

```
docker build -t testing-oracle-with-rspec-demo .
docker run -d -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true testing-oracle-with-rspec-demo
```

### Install Oracle Instant Client

[Docs here](https://github.com/kubo/ruby-oci8/blob/master/docs/install-on-osx.md#install-oracle-instant-client-packages)

### Run tests

1. Get the code

```
git clone git@github.com:heidar/testing-oracle-with-rspec-demo.git
```

2. Set the OCI_DIR

```
export OCI_DIR=$(brew --prefix)/lib
```

3. Install gems

```
bundle
```

4. Run tests

```
bundle exec rspec
```

### TODO

[Trello Board](https://trello.com/b/aFOPOLJR)
