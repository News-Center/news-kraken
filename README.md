# news-kraken

<p align="center">
<img src="https://user-images.githubusercontent.com/45206898/212726740-33660894-1b48-48a9-b792-8b5491d8565c.png" width="455" height="455">
</p>

# Setup

**news-kraken** enables us to run the entire NewsCenter-Backend withhin a single dockerized application that runs with
multiple docker containers. Before you can use kraken you have to do the following steps:

* Clone all relevant repos (with ssh, not https) from the [News-Center-Organisation](https://github.com/News-Center) **MAKE SURE THEY ARE ALL IN THE SAME DIRECTORY**
  organisation into the **SAME DIRECTORY**. As of now those are:
    * [user-api](https://github.com/News-Center/user-api)
    * [news-api](https://github.com/News-Center/news-api)
    * [news-manager](https://github.com/News-Center/news-manager)
    * [news-client-email](https://github.com/News-Center/news-client-email)
    * [news-kraken](https://github.com/News-Center/news-kraken)
* Enter the news-kraken directory
* Create your .env file in the root of the news-kraken directory:
    * To a obtain dummy smtp email handle you may use [ethereal](https://ethereal.email/messages)

```
EMAIL_LOGIN = "<YOUR-SECRET>"
EMAIL_PASSWORD = "<YOUR-SECRET>"
EMAIL_HOST = "<YOUR-SECRET>"
...
```

# Start the Services

**Starting all services:**
Using make:
```
make up
```

Using docker compose:
```docker
docker compose up
```

**Starting Databases only:**
Using make:
```
make db
```

Using docker compose:
```docker
docker compose up postgres_user_api postgres_news_api --build --force-recreate
```

**Please keep in mind:**

* For looking at the logs of a particular container I recommend using Docker Desktop.
* The Frontend is not included with this. The Frontend is a React-Application and its repo is hosted on Azure.
