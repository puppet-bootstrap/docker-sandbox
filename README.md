# docker-sandbox

This repo contains a Docker configuration for a basic AlmaLinux + OpenVox system
suitable for demonstration purposes.  To use it, run the following:

```shell
docker run --rm -it ghcr.io/puppet-bootstrap/sandbox:latest
```

You can also use `podman`:

```shell
podman run --rm -it ghcr.io/puppet-bootstrap/sandbox:latest
```

Inside the container, all `puppet` commands will work as expected, but you can safely
make changes in the ephemeral storage without it affecting your system.

```
$ podman run --rm -it ghcr.io/puppet-bootstrap/sandbox:latest
[root@e43c4102b9e5 /]# puppet resource file /tmp/test_file ensure=file
Notice: /File[/tmp/test_file]/ensure: created
file { '/tmp/test_file':
  ensure   => 'file',
  provider => 'posix',
}
[root@e43c4102b9e5 /]# ls -l /tmp/test_file
-rw-r--r-- 1 root root 0 Oct 23 20:55 /tmp/test_file
[root@e43c4102b9e5 /]# exit
exit
$ ls -l /tmp/test_file
ls: cannot access '/tmp/test_file': No such file or directory
```
