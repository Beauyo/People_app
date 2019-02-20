class Person < ApplicationRecord
  valitdates :first_name, :age, presence: true
end
