## Build

```bash
docker image build --tag MicahZoltu/augur-ui-extractor .
```

## Run

#### Latest
```bash
docker container run --rm -it --volumes-from ipfs MicahZoltu/augur-ui-extractor
```
#### Specific Version
```bash
docker container run --rm -it --volumes-from ipfs augur-ui-extractor augur-ui-5.0.0-10.tgz
```

## Why

So you can do this after
```bash
docker container exec -it ipfs ipfs add --recursive --pin=true /export/augur-ui
```
