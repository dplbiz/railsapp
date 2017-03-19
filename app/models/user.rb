class User < ApplicationRecord
	# Constants
	STATUS_ACTIVE = 1
	STATUS_INACTIVE = 0

	# Validate first_name
	validates_presence_of :first_name,
	:message => " can not be blank!"
	validates_length_of :first_name, :in => 1..20,
	:message => " must have at least 1 and at most 20 characters"

	# Validate last_name
	validates_presence_of :last_name,
	:message => " can not be blank!"
	validates_length_of :last_name, :in => 1..20,
	:message => " must have at least 1 and at most 20 characters"

	# Validate username
	validates_presence_of :username,
	:message => " can not be blank!"
	validates_uniqueness_of :username,
    :message => " already used by another person!"
	validates_length_of :username, :in => 5..30,
	:message => " must have at least 5 and at most 30 characters"
	validates_format_of :username, :with => /\A[a-zA-Z0-9_\-\.]+\z/,
    :message => "Only letters and numbers allowed"

	# Validate password
	validates_presence_of :password,
	:message => " can not be blank!"
	validates_length_of :password, :in => 6..30,
	:message => " must have at least 6 and at most 30 characters"

	# Validate email
	validates_presence_of :email,
	:message => " can not be blank!"
	validates_uniqueness_of :email,
    :message => " already used by another person!"
	validates :email, length: { maximum: 100, message: " must have at most 100 characters" }

	# Validate status
	validates_presence_of :status,
	:message => " can not be blank!"
	validates :status, numericality: { only_integer: true, message: " must be integer." }
	validates :status, inclusion: { in: [STATUS_INACTIVE, STATUS_ACTIVE], message: " must be 0 or 1" }
end
