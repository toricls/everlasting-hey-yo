# everlasting-hey-yo
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]
[![Hey, Yo!](https://img.shields.io/badge/Hey-Yo!-orange.svg?style=flat-square)][hey-yo]

[license]: https://github.com/toricls/everlasting-hey-yo/blob/master/LICENSE
[hey-yo]: https://github.com/topics/hey-yo
Everlasting "Hey, Yo!" per second

## Usage
```
$ docker run toricls/everlasting-hey-yo
```

then, you'll see everlasting
```
Hey, Yo!
Hey, Yo!
...
```

### Hey-yo traps SIGTERM
```
$ docker stop YOUR-CONTAINER-ID
```

then, you'll see
```
...
Hey, Yo!
Hey, Hey, Hey, Yo!!! 👈 You'll find this line!
Hey, Yo!
Hey, Yo!
...
```

## So, what is this?
Hey-yo is meant to test time-diff between SIGTERM and SIGKILL sent by `docker stop` and its subsequences.

You can use Hey-yo to find whether your container orchestration tool issues docker stop with `--stop` option (or, docker run with `--stop-timeout` option) as expected.

## Build your own Hey-Yo
```
$ docker build -t YOUR-NAME/everlasting-hey-yo .
$ docker push YOUR-NAME/everlasting-hey-yo .
```

## Contribution

1. Fork ([https://github.com/toricls/everlasting-hey-yo/fork](https://github.com/toricls/everlasting-hey-yo/fork))
1. Create a feature branch
1. Commit your changes
1. Rebase your local changes against the master branch
1. Create a new Pull Request

## Licence

[MIT](LICENCE)

## Author

[toricls](https://github.com/toricls)
