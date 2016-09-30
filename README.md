Docker
============

Build Tests
-----------

```bash
sudo docker build -t 192.168.57.27:5000/books-ms-centos-tests -f Dockerfile.test .
    
sudo docker push 192.168.57.27:5000/books-ms-centos-tests
```

Test and Build
--------------

```bash
sudo docker-compose -f docker-compose-dev.yml run testsLocal

sudo docker build -t 192.168.57.27:5000/books-ms-centos .

sudo docker push 192.168.57.27:5000/books-ms-centos
```

Run Front-End Tests Watcher
---------------------------

```bash
sudo docker-compose -f docker-compose-dev.yml up feTests
```

Run Integration Tests
---------------------

```bash
sudo docker-compose -f docker-compose-dev.yml up integ
```

=======
# books-ms-centos

