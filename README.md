# GitHub Actions self-hosted ubuntu runner for .NET on podman (docker)

[docker.io kekyo/ga_ubuntu_runner](https://hub.docker.com/r/kekyo/ga_ubuntu_runner)

## How to use

Variables:

* `GA_URL`: GitHub repository URL
* `GA_TOKEN`: GutHub Actions (registering) token
* `GA_NAME`: GitHub Actions instance name

Example:

```bash
$ sudo podman run -d -e GA_URL=https://github.com/kekyo/IL2C -e GA_TOKEN=***** -e GA_NAME=ga_ubuntu_runner_IL2C docker.io/kekyo/ga_ubuntu_runner
```

Automated run:

```bash
$ cd /etc/systemd/system
$ sudo podman generate systemd --name --restart-policy on-failure -f ga_ubuntu_runner_IL2C
systemctl daemon-reload

systemctl enable container-ga_ubuntu_runner_IL2C
systemctl start container-ga_ubuntu_runner_IL2C
```

## License

Under MIT

