class AddContN5ToLugares < ActiveRecord::Migration[6.0]
  def change
    add_column :lugares, :cont_n5, :string
    add_column :lugares, :cont_v5, :decimal
  end
end
