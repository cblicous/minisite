class Tag < ActiveRecord::Base
    validates :name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }

  belongs_to :entry
end
