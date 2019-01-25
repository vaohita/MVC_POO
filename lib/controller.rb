require_relative 'gossip'#ici gossip c'est le model
require_relative 'view'

class Controller


##instance dans view##
  def initialize

    @view = View.new

  end

##methode pour créer un gossip##
  def create_gossip

	@params = @view.create_gossip
	@tbl = Array.new
	@tbl = @params
	@gossip = Gossip.new("#{@tbl[0]}", "#{@tbl[1]}")
	@gossip.save

  end

##methode pour demander une liste au Model##
  def gossip_list

  end

##methode pour demander d'effacer qlq chose au Model##
  def delete_gossip

  end


end