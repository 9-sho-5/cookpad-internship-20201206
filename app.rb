require 'sinatra'
require_relative 'lib/poll'
require_relative 'lib/vote'

get '/' do
    polls = [
        Poll.new('好きな料理', ['肉じゃが', '生姜焼き', '唐揚げ']),
        Poll.new('人気投票', ['おむすびけん','クックパッドたん']),
    ]
    # 配列pollsをindexで使用できるように変数指定
    erb :index, locals: {polls: polls}
end
