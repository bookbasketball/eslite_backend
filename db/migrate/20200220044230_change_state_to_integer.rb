class ChangeStateToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :state, :integer
  end
end
