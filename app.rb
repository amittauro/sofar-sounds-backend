require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require_relative './models/video'
require_relative './lib/VideoDatabase'
require 'pry'

class SofarVideos < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  set :database, {adapter: 'postgresql', database: 'sofar'}

  data = JSON.parse(File.read('./video_data.json'))
  VideoDatabase.new.create(data) unless Video.all.size > 0

  get '/' do
    'hello world'
  end

  get '/video/:songname' do
    p params
    videos = Video.where(song_title: params[:songname])
    videos.to_json
  end

  get '/video/location/:city' do
    videos = Video.where(city_title: params[:city])
    videos.to_json
  end
end
