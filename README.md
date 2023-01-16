# news-kraken
<p align="center">
<img src="https://user-images.githubusercontent.com/45206898/212726740-33660894-1b48-48a9-b792-8b5491d8565c.png" width="455" height="455">
</p>

# Setup
1. **Build Docker Images for each Repository**
    * In the [user-api](https://github.com/News-Center/user-api) directory run `docker build -t user-api .`
    * In the [news-api](https://github.com/News-Center/news-api) directory run `docker build -t news-api .`
    * In the [news-manager](https://github.com/News-Center/news-manager) directory run `docker build -t news-manager .`
    * In the [news-manager](https://github.com/News-Center/news-client-email) directory run `docker build -t news-client-email .`
2. Run `docker compose up`
