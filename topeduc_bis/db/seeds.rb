# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def destroy_all

	User.destroy_all
	Calendar.destroy_all
	Request.destroy_all
	Contract.destroy_all
	Message.destroy_all
	Facture.destroy_all
	Client.destroy_all

end

def create_admin

	User.create(email: "jpmagido@me.com", password: "blablabla", first_name: "Jean-Philippe", last_name: "Magido", job: "Ruby Monster", nationality: "Française", phone: "0686631654", adress: "1 rue des Champs Elysées", ZIP_CODE: "75008", availability: true)
end

def create_user

	User.create(email: "user01@test.com", password: "blablabla", first_name: "User_01", last_name: "Name_test", job: "BOT", nationality: "Classified", phone: "0686631654", adress: "La cave", ZIP_CODE: "Classified", availability: true)
end

def create_calendar
	Calendar.create(user_id: User.first.id, starts_at: "2019/11/02", duration: 8, recurring: false)

end

def create_request
	Request.create(user_id: User.first.id, starts_at: "2019/11/06", ends_at: "2019/11/10", hourly_rate: 20, adress: "20 rue du Temple", ZIP_CODE: "75003", client_id: Client.first.id, driving_licence: true, job: "Educateur enfants", comments: "travail avec des handicapés", other: "Attention aux clous", accepted?: nil)
end

def create_contract
	Request.last.update(accepted?: true)
	Contract.create(user_id: User.first.id, request_id: Request.first.id, starts_at: Request.first.starts_at, ends_at: Request.first.ends_at, hourly_rate: Request.first.hourly_rate, adress: Request.first.adress, ZIP_CODE: Request.first.ZIP_CODE, client_id: Request.first.client_id, job: Request.first.job, comments: Request.first.comments)
end

def create_facture
	Facture.create(bill_sender_id: User.first.id, bill_recipient_id: User.last.id, client_id: Request.last.client_id, total_price: 1000, month: "Janvier", TVA: 20.00, advance_payment: nil, xlsx_data: nil)
end

def create_conversation
	Message.create(title: "Message Envoi Test 01", body: "Texte du message Test 01", sender_id: User.first.id, recipient_id: User.last.id, read?: false)
	Message.create(title: "Message Reçu Test 02", body: "Texte du message Test 02", sender_id: User.last.id, recipient_id: User.first.id, read?: false)
end

def create_client
	Client.create(name: "BNP Paribas", n_tva: "FR 99999999999", n_siret: "362 521 879 00034", address: "20 rue du chemin vert", zip_code: "76000" )
end

def perform
	destroy_all
	create_admin
	create_user
	create_client
	create_calendar
	create_request
	create_contract
	create_conversation
	create_facture

	puts "Seed done :)"
end

perform




