class CategoriesController < ApplicationController

	def index
		@cats = MainClass.all
		@main_cat = MainClass.new
		@subcat = Subclass.new
		@third_cat = ThirdClass.new
	end

	def create
		@main_cat = MainClass.new()
		@subcat = Subclass.new
		@third_cat = ThirdClass.new
		redirect_to categories_path
	end

	def update

		redirect_to categories_path
	end

private

	def params_filter
		params.require(:main_class).permit(:name)
		params.require(:subclass)
		params.require(:third_cat)
		
	end

end


