

get '/' do
 response = HTTParty.get('http://services.my511.org/Transit2.0/GetRoutesForAgencies.aspx?token=807178e4-875f-46f4-87e5-e5ec461b99f0&agencyNames=
BART|SF-MUNI|WESTCAT ')

# p response
# puts response.body, response.code, response.message, response.headers.inspect
# puts response.body

@options = JSON.parse(response)

p @options
erb :index
end