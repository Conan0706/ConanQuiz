require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'
require 'json'

get '/' do
    
    title = {"時計じかけの" => "摩天楼",
            "14番目の" => "標的",
            "世紀末の" => "魔術師",
            "瞳の中の" => "暗殺者",
            "天国への" => "カウントダウン",
            "ベイカー街の" => "亡霊",
            "迷宮の" => "十字路",
            "銀翼の" => "奇術師",
            "水平線上の" => "陰謀",
            "探偵たちの" => "鎮魂歌",
            "紺碧の" => "棺",
            "戦慄の" => "楽譜",
            "漆黒の" => "追跡者",
            "天空の" => "難破船",
            "沈黙の" => "15分",
            "11人目の" => "ストライカー",
            "絶海の" => "探偵",
            "異次元の" => "狙撃手",
            "業火の" => "向日葵",
            "純黒の" => "悪夢",
            "ゼロの" => "執行人",
            "紺青の" => "拳",
            "緋色の" => "弾丸",
            "ハロウィンの" => "花嫁",
            "黒鉄の" => "魚影"
    }
    
    @randomtitle = title.to_a.shuffle.to_h
    @titleJson = @randomtitle.to_json
  erb :index
end
