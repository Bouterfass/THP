require 'gossip'
require 'view'

class Controller

    def initialize
        @view = View.new
    end
  
    def create_gossip
        params = @view.create_gossip
        gossip = Gossip.new(params[:auteur], params[:potin])
        gossip.save
    end  

    def index_gossips
        @view.index_gossips(Gossip.all)
    end

    def delete
        Gossip.delete(@view.delete)
    end
end