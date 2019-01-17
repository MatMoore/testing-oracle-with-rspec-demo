### Run Oracle in Docker

```
docker run -d -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true wnameless/oracle-xe-11g
```

### Install Oracle Instant Client

[Docs here](https://github.com/kubo/ruby-oci8/blob/master/docs/install-on-osx.md#install-oracle-instant-client-packages)

### Run tests

1. Get the code

```
git clone git@github.com:heidar/testing-oracle-with-rspec-demo.git
```

2. Install gems

```
bundle
```

3. Run tests

```
bundle exec rspec
```

### TODO

Try with [ruby-plsql-spec](https://github.com/rsim/ruby-plsql-spec) gem instead.
