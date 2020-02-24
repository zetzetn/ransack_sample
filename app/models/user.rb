class User < ApplicationRecord
  attr_accessor :search_name, :search_age

  def search
    User.ransack(name_eq: @search_name, age_eq: @search_age).result
  end
end
