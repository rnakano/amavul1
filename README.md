# amavul1
Vulnerability scanner for Amazon Linux 2018.03

## How to use

Run `vulnerability.rb` and enter the list of installed rpm packages to stdin.

Installed rpm packages can be collect by follow command:

```
rpm --dbpath /var/lib/rpm -qa --qf '%{NAME} %{VERSION}-%{RELEASE}\n'
```

### Dockernized version

Dockernized amavul1 is available [here](https://hub.docker.com/r/rnakano/amavul1).

If you scan docker image based on amazonlinux:1 with dockernized amavul1, run simply follow command:

```
$ docker run --rm amazonlinux:1 rpm --dbpath /var/lib/rpm -qa --qf '%{NAME} %{VERSION}-%{RELEASE}\n' | docker run -i --rm rnakano/amavul1
```

## Result

Returns `0` if vulnerabilities are not found, `1` otherwise.

## Vulnerability source

* [Amazon Linux Security Center](https://alas.aws.amazon.com/)

## Scan target

Amavul1 can scan only rpm packages.
