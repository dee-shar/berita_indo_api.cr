# berita_indo_api.cr
Web-API for [berita-indo-api-next.vercel.app](https://berita-indo-api-next.vercel.app/) an Public API to get the latest news from the popular news portal in Indonesia

[![Github Card](https://github-readme-stats.vercel.app/api/pin/?theme=transparent&hide_border=true&show_owner=true&username=satyawikananda&repo=berita-indo-api)](https://github.com/satyawikananda/berita-indo-api)


## Example
```cr
require "./berita_indo_api"

berita_indo_api = BeritaIndoApi.new
news = berita_indo_api.get_news()
puts news
```
