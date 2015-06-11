class AccountingBooksController < ApplicationController

	def index
		@abs = AccountingBook.all

	end

#create
	def new
		@ab = AccountingBook.new

	end

	def create
		@ab = AccountingBook.new(ab_params)
		if @ab.save
			redirect_to ab_index_url
		else
			render new_ab_url
		end
	end

#show
	def show
		@ab = AccountingBook.find(params[:id])
	end


#delete
	def destroy
		@ab = AccountingBook.find(params[:id])
		@ab.destroy
		flash[:alert] = "Ths item has been delete!"
		redirect_to ab_index_url
	end


private

	def ab_params
		params.require(:accounting_book).permit(:consume_date, :description, :main_class_id, :subclass_id, :third_class_id, :consume_way_id, :note)
	end


end
