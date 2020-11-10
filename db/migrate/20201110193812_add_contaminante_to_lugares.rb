class AddContaminanteToLugares < ActiveRecord::Migration[6.0]
  def change
    add_column :lugares, :cont_n1, :string
    add_column :lugares, :cont_v1, :decimal
    add_column :lugares, :cont_n2, :string
    add_column :lugares, :cont_v2, :decimal
    add_column :lugares, :cont_n3, :string
    add_column :lugares, :cont_v3, :decimal
    add_column :lugares, :cont_n4, :string
    add_column :lugares, :cont_v4, :decimal
  end
end
