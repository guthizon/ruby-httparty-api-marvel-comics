require 'httparty'

class ComicsPage
  include HTTParty
  base_uri 'http://gateway.marvel.com/v1/public'

  def initialize(ts, api_key, hash)
    @ts = ts
    @api_key = api_key
    @hash = hash
  end

  def get_comics
    self.class.get('/comics', query: {ts: @ts, apikey: @api_key, hash: @hash })
  end
  
  def get_comics_by_id(comic_id)
    self.class.get("/comics/#{comic_id}", query: {ts: @ts, apikey: @api_key, hash: @hash })
  end
end
