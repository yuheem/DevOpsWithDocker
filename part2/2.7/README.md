# 2.7

Configure a [machine learning](https://en.wikipedia.org/wiki/Machine_learning) project.

Look into machine learning project created with Python and React and split into three parts: [frontend](https://github.com/docker-hy/ml-kurkkumopo-frontend), [backend](https://github.com/docker-hy/ml-kurkkumopo-backend) and [training](https://github.com/docker-hy/ml-kurkkumopo-training)

Note that the training requires 2 volumes and backend should share volume `/src/model` with training.

The frontend will display on <http://localhost:3000> and the application will tell if the subject of an image looks more like a cucumber or a moped.

Submit the docker-compose.yml
