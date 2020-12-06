require 'sinatra'
# サーバーを再起動しなくとも、コードの変更が自動的に反映される
require 'sinatra/reloader' if development?
require_relative 'lib/poll'
require_relative 'lib/vote'

$polls = [
    Poll.new('好きな料理', ['肉じゃが', 'しょうが焼き', 'から揚げ']),
    Poll.new('人気投票', ['おむすびけん', 'クックパッドたん']),
]

get '/' do
#   polls = [
#     Poll.new('好きな料理', ['肉じゃが', 'しょうが焼き', 'から揚げ']),
#     Poll.new('人気投票', ['おむすびけん', 'クックパッドたん']),
#   ]
#   erb :index, locals: { polls: polls }
    erb :index, locals: { polls: $polls }
end

get '/polls/:id' do
    index = params['id'].to_i
    poll = $polls[index]
    # ルーティング内でただちにリクエストを止めることができます
    halt 404, '投票が見つかりませんでした' if poll.nil?

    erb :poll, locals: { index: index, poll: poll}
end
