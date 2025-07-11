class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  field :serial_id, type: String
  field :phone,     type: String
  field :body,      type: String
  field :status,    type: String

  VALID_STATUSES = %w[SENT DELIVERED FAILED].freeze

  validates_presence_of :serial_id, :phone, :body
  validates_uniqueness_of :serial_id
  validates_numericality_of :serial_id
  validates :status, inclusion: { in: VALID_STATUSES }, allow_nil: true
end
