require 'sinatra'
require 'sinatra/reloader' if development?
require './methods.rb'

get '/' do
  phrase = params['phrase'] || "Enter your message"
  key = params['key'] || 0

  message = caesar_cipher(phrase, key)
  message = '' if message == false

  erb :index, :locals => { :message => message }
end