require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'
stock = StockQuote::Stock.quote("msft")

get '/' do
  erb(:index)
end

get '/stock_input' do
  stock = StockQuote::Stock.quote("#{params[:stock_code]}")
  erb :stock
end
i = 0
  @exchange = stock[i].e
  #  @id = stock[i].id
  #  @reuters = stock[i].f_reuters_url
  #  @name = stock[i].name
  #  @symb = stock[i].symbol
  #  @price = stock[i].l
  #  @cp = stock[i].cp
  #  @c = stock[i].c
  #  @hi52 = stock[i].hi52
  #  @lo52 = stock[i].lo52
  #  @market_cap = stock[i].mc
  #  @beta = stock[i].beta
  #  @dividend_yd = stock[i].dy
  #  @shares = stock[i].shares
  #  @pe = stock[i].pe
  #  @eps = stock[i].eps
  #  @ldiv = stock[i].ldiv
  #  @instown = stock[i].instown
  #  @sname = stock[i].sname
  #  @iname = stock[i].iname
  #  @open = stock[i].op
  #  @hi = stock[i].hi
  #  @lo = stock[i].lo
  #  @vo = stock[i].vo
  #  @avvo = stock[i].avvo
