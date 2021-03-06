require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    calendars: Field::HasMany,
    resumes: Field::HasMany,
    ids: Field::HasMany,
    diplomas: Field::HasMany,
    carte_vitales: Field::HasMany,
    kbis: Field::HasMany,
    ribs: Field::HasMany,
    permis_bs: Field::HasMany,
    requests: Field::HasMany,
    contracts: Field::HasMany,
    sent_messages: Field::HasMany.with_options(class_name: "Message"),
    received_messages: Field::HasMany.with_options(class_name: "Message"),
    sent_bills: Field::HasMany.with_options(class_name: "Facture"),
    received_bills: Field::HasMany.with_options(class_name: "Facture"),
    id: Field::Number,
    email: Field::String,
    password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    job: Field::String,
    nationality: Field::String,
    phone: Field::String,
    availability: Field::Boolean,
    adress: Field::String,
    ZIP_CODE: Field::String,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  first_name
  last_name
  ZIP_CODE
  job
  availability
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  first_name
  last_name
  ZIP_CODE
  job
  availability
  calendars
  resumes
  ids
  diplomas
  carte_vitales
  kbis
  ribs
  permis_bs
  requests
  contracts
  sent_messages
  received_messages
  sent_bills
  received_bills
  id
  email
  password
  reset_password_token
  reset_password_sent_at
  remember_created_at
  created_at
  updated_at
  first_name
  last_name
  job
  nationality
  phone
  availability
  adress
  ZIP_CODE
  confirmation_token
  confirmed_at
  confirmation_sent_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  calendars
  resumes
  ids
  diplomas
  carte_vitales
  kbis
  ribs
  permis_bs
  requests
  contracts
  sent_messages
  received_messages
  sent_bills
  received_bills
  email
  password
  reset_password_token
  reset_password_sent_at
  remember_created_at
  first_name
  last_name
  job
  nationality
  phone
  availability
  adress
  ZIP_CODE
  confirmation_token
  confirmed_at
  confirmation_sent_at
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(user)
  "#{user.first_name} #{user.last_name}"
  end
  # 
end
