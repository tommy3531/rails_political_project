module PropublicaHelper
	client = ProPublica.new('SpzjlPZlkMlPKKGCLQS1OqZtCN96lPl7sszOTKra')


	def login
		about = client.about
	end
end