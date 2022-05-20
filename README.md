
# Madrid Pool Tester May

## About
I am still working on this project.
It will be updated every ~day.

## How to use
* clone this repo to your home dir
  * your home dir is (echo $HOME)
```sh
git clone https://github.com/arikhativa/pool-tester.git
```

* make sure the name of the C repo will be formatted like this - cXX
  * example - c00
* You can change the name with the mv cmd

```sh
mv <PROJECT_NAME> c00
```

The dir should look like this:

```sh
ls -l
total 0
drwxr-xr-x  2 xx  2019  68 May 17 13:11 c00
drwxr-xr-x  2 xx  2019  68 May 17 13:12 pool-tester
```
* **Start your docker**
  * on your Mac there should be a docker app
  * go to applications and start it.
* go into the pool-tester repo

```sh
cd pool-tester
make run
make test PROJ=<PROJECT_NAME>

e.g.
make test PROJ=c00
```

## Contact
You are welcome to contact me for every suggestion!