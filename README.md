<<<<<<< HEAD
Docker
============

Build Tests
-----------

```bash
sudo docker build -t vfarcic/books-ms-tests -f Dockerfile.test .
    
sudo docker push vfarcic/books-ms-tests
```

Test and Build
--------------

```bash
sudo docker-compose -f docker-compose-dev.yml run testsLocal

sudo docker build -t vfarcic/books-ms .

sudo docker push vfarcic/books-ms
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
>>>>>>> d1600fd41b706c3e711c4d45f6c7a87d2f43a2b6
