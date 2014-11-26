class Activity < ActiveRecord::Base
  validates :description, presence: true
  validates :calories, presence: true
  after_initialize :default_attributes, :if => :new_record?

  scope :approved, -> (b) { where approved: b }

  private
    def default_attributes
      self.approved ||= false
    end
end
