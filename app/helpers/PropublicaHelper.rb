module PropublicaHelper
	client = ProPublica.new('SpzjlPZlkMlPKKGCLQS1OqZtCN96lPl7sszOTKra')


	def get_member
	  	client = ProPublica.new('SpzjlPZlkMlPKKGCLQS1OqZtCN96lPl7sszOTKra')
	  	@a = client.get_member("A000374")
	end
end