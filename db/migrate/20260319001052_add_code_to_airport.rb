class AddCodeToAirport < ActiveRecord::Migration[8.1]
  def change
    add_column :airports, :code, :string, null: false
  end
end
