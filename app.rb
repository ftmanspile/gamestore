require "sinatra"
require_relative "gamestore.rb"

get '/' do
	erb :home
end

post '/console_choice' do
	nes = params[:nes]
	snes = params[:snes]
	n64 = params[:n64]
	sega_genesis = params[:sega_genesis]
	atari_2600 = params[:atari_2600]
	puts nes, snes, n64, sega_genesis, atari_2600
	redirect '/result?nes=' + nes +'&snes=' + snes + '&n64=' + n64 + '&sega_genesis=' + sega_genesis +'&atari_2600=' + atari_2600
end

get '/result' do
	nes = params[:nes]
	snes = params[:snes]
	n64 = params[:n64]
	sega_genesis = params[:sega_genesis]
	atari_2600 = params[:atari_2600]
	erb :result, :locals => {:nes => nes, :snes => snes, :n64 => n64, :sega_genesis => sega_genesis, :atari_2600 => atari_2600}
end

