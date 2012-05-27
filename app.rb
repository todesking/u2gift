# coding: utf-8
require 'rubygems'
require 'bundler/setup'

require 'sinatra'

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

get '/' do
  haml :index
end

post '/' do
  redirect "/#{params[:user_name]}/counseling"
end

get '/:user_name/counseling' do
  haml :counseling, locals: {user_name: params[:user_name]}
end
