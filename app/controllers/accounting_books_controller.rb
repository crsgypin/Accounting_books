class AccountingBooksController < ApplicationController
	before_action :set_ab, :only => [:show, :edit, :update, :destroy]

	def index
		set_abs

		if params[:edit_id] == nil
			@ab = AccountingBook.new
		else
			@ab = AccountingBook.find(params[:edit_id])
			hash = params[:accounting_book];
		end
	end

	def new
		@ab = AccountingBook.new
		render ab_index_url
	end

	def create
		@ab = AccountingBook.new(ab_params)

		if @ab.save
			flash[:notice]="新增成功"

			redirect_to ab_index_url
		else
			set_abs
			render :action => :index
		end
	end

	def show
	end

	def edit
		redirect_to ab_index_url(:edit_id => @ab.id)
	end

	def update
		if @ab.update(ab_params)
			flash[:warning]="修改成功"
			redirect_to ab_index_url
		else
			set_abs
			render :action => :index			
		end
	end

	def destroy
		@ab.destroy
		flash[:warning]="移除成功"
		redirect_to ab_index_url
	end

	private

	def ab_params
		params.require(:accounting_book).permit(:consume_date, :description, :cost, :main_class_id, 
												:subclass_id, :third_class_id, :consume_way_id, :note)
	end

	def set_ab
		@ab = AccountingBook.find(params[:id])
	end

	def set_abs
		@abs = AccountingBook.order('consume_date DESC').page(params[:page]).per(5)
	end

end
