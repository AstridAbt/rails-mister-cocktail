class ChangeNameIngredientsinIngredient < ActiveRecord::Migration[6.0]
  def change
    remove_reference :doses, :ingredients, index: true, foreign_key: true
    add_reference :doses, :ingredient, foreign_key: true
  end
end
