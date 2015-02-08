class Constituency < ActiveRecord::Base
  belongs_to :voivodeship
  has_many :votes
  has_one :user
  has_and_belongs_to_many :committees

  validates :name, presence: true
  validates :mandate_number, presence: true, numericality: true
  validates :authorized_number, presence: true, numericality: true
  validates :empty_votes, presence: true, numericality: true
  validates :many_votes, presence: true, numericality: true
  validates :other_votes, presence: true, numericality: true
  validates :given_cards, presence: true, numericality: true
  validates :returned_cards, presence: true, numericality: true
  
  @constituencies = Constituency.all.map do |constituency|
    [ constituency.name, constituency.id]
  end

end
