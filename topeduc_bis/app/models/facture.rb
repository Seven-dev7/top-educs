class Facture < ApplicationRecord

	belongs_to :bill_sender, class_name: "User"
    belongs_to :bill_recipient, class_name: "User"

    include XlsxUploader::Attachment(:xlsx) # adds an `image` virtual attribute
end
