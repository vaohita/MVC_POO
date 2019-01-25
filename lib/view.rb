class View


  def create_gossip
  	
    puts "Qui est l'auteur?"
    @author = gets.chomp.to_s
    puts "Donnez-moi son contenu"
    @content = gets.chomp.to_s
    return @params = [@author,@content]

  end


end