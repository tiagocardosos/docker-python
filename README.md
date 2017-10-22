# docker-python

## Using
```
docker build -t python .
docker run -it -v ~/projects/python:/projects -p 5000:5000 --name=dev_python python /bin/bash
```


## Install virtualenv
```pip3 install virtualenv```

## init virtualenv
```
virtualenv ENV
source ENV/bin/activate
```


## stop virtualenv
```
deactivate
rm -r ENV
```

## Ref:
https://mavins.com.br/blog/python-e-virtualenv-como-programar-em-ambientes-virtuais
http://pythonclub.com.br/what-the-flask-pt-1-introducao-ao-desenvolvimento-web-com-python.html
