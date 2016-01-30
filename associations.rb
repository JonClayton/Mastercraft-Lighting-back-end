#:csv_input
# no associations, equipment row will be generated using method in this model

#:equipment
  belongs_to :production
  belongs_to :venue, through: :equipment_venues
  has_many :equipment_notes

#:equipment_notes
  belongs_to :equipment

#:users
  has_many :leads
  has_many :productions, through: :leads
  has_many :productions, foreign_key: :designer_id
  has_many :productions, foreign_key: :master_electrician_id

#:leads
  belongs_to :user
  belongs_to :production

#:productions
  has_many :venues, through: :productions_venues
  has_many :equipment
  has_many :leads
  has_many :users, through: :leads
  has_one :designer_id, class_name: "User"
  has_one :master_electrician, class_name: "User"

#:productions_venues
  belongs_to :productions
  belongs_to :venues

#:venues
  has_many :equipment, through: :equipment_venues
  has_many :productions, through: :productions_venues

#:equipment_venues
  belongs_to :equipment
  belongs_to :venue
