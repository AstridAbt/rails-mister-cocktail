class ChangeColumnDosetoIngredient < ActiveRecord::Migration[6.0]
  def change
    remove_reference :doses, :dose, index: true, foreign_key: true
    add_reference :doses, :ingredients, foreign_key: true
  end
end
