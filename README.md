# everlasting-hey-yo

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]
[![Hey, Yo!](https://img.shields.io/badge/Hey-Yo!-orange.svg?style=flat-square)][hey-yo]

[license]: https://github.com/toricls/everlasting-hey-yo/blob/master/LICENSE
[hey-yo]: https://github.com/topics/hey-yo
Everlasting "Hey, Yo!" per second

## Usage

```shell
$ docker run public.ecr.aws/toricls/everlasting-hey-yo
```

then, you'll see everlasting "Hey, Yo!" per second.

```shell
Hey, Yo!
Hey, Yo!
...
```

## So, what is this?

Hey-yo container is meant to know the duration between `SIGTERM` and its subsequent `SIGKILL`, _**roughly**_.

You can use Hey-yo to make sure that your container orchestrator issues `docker stop` with `--stop` option (or, `docker run` with `--stop-timeout` option) as expected.

### Hey-yo traps SIGTERM

Hey-yo container react to a SIGTERM signal but does not stop by default.

Let's try sending a SIGTERM signal to your Hey-Yo container with the following command:

```shell
$ docker stop YOUR-CONTAINER-ID
```

then, you'll see the following line and Hey-Yo container will keep running.

```shell
...
Hey, Yo!
Hey, Hey, Hey, Yo!!! 👈 Hey-Yo container reacted to the SIGTERM signal, and keep running!
Hey, Yo!
Hey, Yo!
...
```

### Options

You can change its behavior by specifying environment variables.

#### 1. `LET_ME_DIE`: Let it stop with SIGTERM

Hey-Yo container stops with a SIGTERM signal.

```shell
$ docker run -e LET_ME_DIE=1 public.ecr.aws/toricls/everlasting-hey-yo
```

#### 2. `GIVE_ME_PATTERN`: More message patterns

```shell
$ docker run -e GIVE_ME_PATTERN=1 public.ecr.aws/toricls/everlasting-hey-yo
```

then you'll see randomized, but meaningless, output.

```shell
...
Hey, Yo!
A lot of Hey, Yo!
Hey, Yo!
Hey, Yo!
A lot of Hey, Yo!
A lot of Hey, Yo!
Hey, Yo!
Hey, Yo!
Hey, Yo!
...
```

#### 3. `TIMESTAMP`: Logs with timestamp

```shell
$ docker run -e TIMESTAMP=1 public.ecr.aws/toricls/everlasting-hey-yo
```

then you'll see timestamp-ed log output.

```shell
...
2020-05-07T11:17:05+0000 Hey, Yo!
2020-05-07T11:17:06+0000 Hey, Yo!
2020-05-07T11:17:07+0000 Hey, Yo!
2020-05-07T11:17:08+0000 Hey, Yo!
2020-05-07T11:17:09+0000 Hey, Yo!
...
```

## Build your own Hey-Yo container

```shell
$ docker build -t YOUR-NAME/everlasting-hey-yo .
$ docker push YOUR-NAME/everlasting-hey-yo
```

## Use Docker Hub hosted image instead of Amazon ECR Public

You can use `toricls/everlasting-hey-yo:latest` instead of `public.ecr.aws/toricls/everlasting-hey-yo:latest`.

## Contribution

1. Fork ([https://github.com/toricls/everlasting-hey-yo/fork](https://github.com/toricls/everlasting-hey-yo/fork))
1. Create a feature branch
1. Commit your changes
1. Rebase your local changes against the master branch
1. Create a new Pull Request

## Licence

[MIT](LICENSE)

## Author

[Tori](https://github.com/toricls)
