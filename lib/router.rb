require_relative 'controller'


class Router


#creer une instance dans Controller#
  def initialize

  	@controller = Controller.new

  end

  def perform

    puts "Bienvenue dans the gossip project"

    while true
    	
		#menu
    	puts "Tu veux faire quoi BG ?"
    	puts "1. Je veux créer un gossip"
    	puts "2. Je veux voir la liste des gossips"
    	puts "3. Je veux supprimer un gossip"
    	puts "4. Je veux quitter l'application"

    	#le choix de l'utilisateur
    	param = gets.chomp.to_i

    	case param #selon le choix de l'utilisateur
    	  when 1
    	    puts "Création d'un gossip"
    	    @controller.create_gossip
    	 when 2
    	  	puts "Recherche de la liste des gossip"
    	  	@controller.gossip_list
    	  when 3
    	  	puts "Suppression d'un gossip"
    	  	@controller.delete_gossip
    	  when 4
    	  	puts "A bientôt !"
    	break
        else
          puts "Votre choix n'existe pas,veuillez relire le menu et ressayer"
        end
    end
  end

end