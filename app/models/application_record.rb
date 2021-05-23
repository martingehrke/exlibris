class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  self.implicit_order_column = :created_at

  default_scope { strict_loading } unless Rails.env.production?
end
