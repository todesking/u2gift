# coding: utf-8
require 'rubygems'
require 'bundler/setup'

require 'sinatra'

get '/:what?' do
  "#{params[:what]||'人間'}が死ぬ"
end
