# == Schema Information
#
# Table name: menus
#
#  id                 :uuid             not null, primary key
#  name               :string           not null
#  service_end_hour   :string           default("23:59")
#  service_start_hour :string           default("09:00")
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  restaurant_id      :uuid             not null
#
# Indexes
#
#  index_menus_on_restaurant_id  (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (restaurant_id => restaurants.id)
#
require "test_helper"

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
