# Lightbit Installation Script

Installs Lightbit core or any base code forked coin with the same dependencies and build instructions as Bitcoin. The current repo added is Lightbit.

PLEASE NOTE: Feel free to submit a pull request if you have any issues with an installation script for your os version or if your os is not present.

# Run Installation

To run an installation, execute the file with the prefix "install-" for your os version. Specify the directory in which you would like to install LITB. Make sure that you do not include a leading and trailing slash

```shell
$ ./install-ubuntu18.04.sh home/ubuntu
```

If you have issues running any install script, make sure it is executable. You can make a shell script executable by running the following command.

```shell
$ chmod +x ./install-ubuntu18.04.sh
```

# Install an updated core code release
To install an updated core code release, update the following code within the relevant install script, to reflect the location of the release's zipped code.

```
VERSION=0.18.1
```

# Potential Issues

For older version of Ubuntu, you may have to update your sources
```
# Update source endpoints (Only for older version of Ubuntu e.g. 15.10)
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
sudo sed -i -e 's/us.archive/old-releases/g' /etc/apt/sources.list
sudo sed -i -e 's/security.ubuntu/old-releases.ubuntu/g' /etc/apt/sources.list
```
