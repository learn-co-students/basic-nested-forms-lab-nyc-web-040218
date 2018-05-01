class Recipe < ActiveRecord::Base
  has_many :ingredients

  accepts_nested_attributes_for :ingredients

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity,
        :recipe_id
      ]
    )
  end
end
