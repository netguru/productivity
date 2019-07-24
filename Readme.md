# Productivity tips for Netguru

A documentation-like site about productivity: tips, tricks and guides which will help you to achieve more every day.

---

## Adding/changing content

You can contribute to this repository by opening a Pull Request. All contributions are greatly appreciated!

### With Docker

It should be fairly trivial, clone the repo first and then run:

```
docker-compose up
```

Go to http://localhost:8000 and all of the changes should be visible.

### Without docker

If you want to see your change locally, install `mkdocs` first (https://www.mkdocs.org/#installation), than use `mkdocs serve` command to get a preview of the site.

## Deployment

Each change in master builds a new web version (see `.circleci/config.yml` for details).

Circle builds all the required files and then sends it to AWS S3 which serves the content via AWS CloudFront. Changes are visible in ~1min after merging changes with `master` branch.

## Contributors

Original idea by Adam Nowak ([@lubieniebieski](https://github.com/lubieniebieski)), all the contributors are listed [here](https://github.com/netguru/productivity/graphs/contributors).
