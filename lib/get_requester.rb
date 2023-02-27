# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  def initialize(str)
    @str = str
    @uri = ''
  end

  def get_response_body
    @uri = URI.parse(@str)
    @uri.open.string
  end

  def parse_json
    JSON.parse(Net::HTTP.get_response(URI.parse(@str)).body)
  end
end

