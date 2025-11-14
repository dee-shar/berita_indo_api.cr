require "json"
require "http/client"

class BeritaIndoApi
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://berita-indo-api-next.vercel.app")
    @http_client = HTTP::Client.new(uri)
  end

  def get_news(
      channel : String = "antara-news", type : String = "top-news") : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/#{channel}/#{type}", headers: @headers).body)
  end
end
