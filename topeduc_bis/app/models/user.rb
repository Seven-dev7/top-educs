class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :calendars
  has_many :resumes
  has_many :ids
  has_many :diplomas
  has_many :carte_vitales
  has_many :kbis
  has_many :ribs
  has_many :permis_bs
  has_many :requests
  has_many :contracts

#Messages Model links
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"
  
#Factures Model Links
  has_many :sent_bills, class_name: "Facture", foreign_key: "bill_sender_id"
  has_many :received_bills, class_name: "Facture", foreign_key: "bill_recipient_id"

end
