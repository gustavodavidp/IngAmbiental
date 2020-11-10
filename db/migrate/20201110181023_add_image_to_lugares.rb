class AddImageToLugares < ActiveRecord::Migration[6.0]
  def change
    add_column :lugares, :avatar, :json
  end
end
