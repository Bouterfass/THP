require 'gossip'


class ApplicationController < Sinatra::Base
    get '/' do
        erb :index, locals: {gossips: Gossip.all}
    end

    get '/gossips/new/' do
        erb :new_gossip
    end

    post '/gossips/new/' do
        Gossip.new(params["gossip_author"], params["gossip_content"]).save
        redirect '/'
    end

    get '/gossip/:id' do
        erb :gossip_id, locals: {gossip_id:  Gossip.new(Gossip.find(params['id'].to_i).auteur, Gossip.find(params['id'].to_i).potin)}
    end

    get '/gossip/:id/edit' do
        erb :edit
    end

    post '/gossip/:id/edit' do
        Gossip.update(params['id'].to_i, params['update_author'], params['update_content'])
        redirect '/'
    end
end