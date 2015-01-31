class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String
  field :read, default: false

  belongs_to :sender, class_name: 'User', inverse_of: :send_messages
  belongs_to :accepter, class_name: 'User', inverse_of: :accept_messages
end
