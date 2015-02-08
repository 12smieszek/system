class CommitteesVoivodeship < ActiveRecord::Base
  belongs_to :committee
  belongs_to :voivodeship
end
