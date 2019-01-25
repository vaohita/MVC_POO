require 'csv'


class Gossip

	attr_reader :author, :content#pour 
								 #pouvoir écrire 
  def initialize(author,content) #directement
    @content = content			 #@gossip = Gossip.new("...","...")
    @author = author			 #dans le controller
  end
  def save
  	@h = {@author => @content}
  	csv = CSV.open("db/gossip.csv", "a+") { |csv| @h.to_a.each{ |elt| csv << elt }}  	
  	puts "Potin enregistré!"
  end
 
end