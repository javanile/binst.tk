# 🛠️ BInst.Tk

> <b>(B)</b>inary <b>(Inst)</b>aller <b>(T)</b>ool<b>(k)</b>it - also known "BInst.Tk" 😮

**BInst.Tk** is a rapid installtion tool that get packages from GitHub. With **BInst.Tk** you can install any of the repositories from GitHub to your machine without lose of time.

## Usage 

**BInst.Tk** could be used without install, to get Docker from <https://github.com/docker/docker> just type the following command

```shell
curl -s binst.tk | sudo bash -s docker/docker
```

## Install

**BInst.Tk** is not a resident script, the most annoyance we can give you is creating an alias in your shell. Just run the following command

```shell
curl -s binst.tk/alias | bash
```

It create an alias into your favorite shell profile file, somethig like that

```shell
alias binst='curl -s binst.tk/alias | sudo bash -s'
```

## Requiments

**BInst.Tk** has no particular dependency, obviously remember that it is used to get software directly from source 
so you will often be forced to install [GNU Make](https://www.gnu.org/software/make/) before starting.

## Credits

### Contributing

Thank you for considering contributing to this project! The contribution guide can be found in the [CONTRIBUTING.md](CONTRIBUTING.md).

### Code of Conduct

In order to ensure that the Javanile community is welcoming to all, please review and abide by the [Code of Conduct](CONTRIBUTING.md#code-of-conduct).

### Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Francesco Bianco via [bianco@javanile.org](mailto:bianco@javanile.org). All security vulnerabilities will be promptly addressed.

### License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
