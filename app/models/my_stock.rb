class MyStock < ApplicationRecord
  has_many :my_histos, dependent: :destroy
end
