# news-kraken

<p align="center">
<img src="https://user-images.githubusercontent.com/45206898/212726740-33660894-1b48-48a9-b792-8b5491d8565c.png" width="455" height="455">
</p>

# Setup

**news-kraken** enables us to run the entire NewsCenter-Backend withhin a single dockerized application that runs with
multiple docker containers. Before you can use kraken you have to do the following steps:

* Clone all relevant repos (with ssh, not https) from the [News-Center-Organisation](https://github.com/News-Center)
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
EMAIL_LOGIN = "TODO"
EMAIL_PASSWORD = "TODO"
EMAIL_HOST = "TODO"
...
```

* Create your own launch script. For this copy the `launch-example.bat` file and modify the `basePath`:

```
REM basePath anpassen!
set "basePath=C:\PATH\TO\ALL\REPOS\"
...
```

* Now you can execute your launch file by simply clicking on it.

**Please keep in mind:**

* The script will try to pull the current code for each repo and then build the image. If you have merge conflicts in
  any of them you need to resolve them first (if you want to run the backend in the newest version).
* For looking at the logs of a particular container I recommend using Docker Desktop.
* The Frontend is not included with this. The Frontend is a React-Application and its repo is hosted on Azure.

# Manual Setup

1. **Build Docker Images for each Repository**
    * In the [user-api](https://github.com/News-Center/user-api) directory run `docker build -t user-api .`
    * In the [news-api](https://github.com/News-Center/news-api) directory run `docker build -t news-api .`
    * In the [news-manager](https://github.com/News-Center/news-manager) directory run `docker build -t news-manager .`
    * In the [news-client-email](https://github.com/News-Center/news-client-email) directory
      run `docker build -t news-client-email .`
2. Run `docker compose up`
