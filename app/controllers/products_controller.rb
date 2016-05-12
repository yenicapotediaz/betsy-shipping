class ProductsController < ApplicationController
	before_action :require_login, only: [:new, :create, :show_seller_products, :edit, :update, :retire, :destroy]

	def index
		@products = Product.where(retired: false)
	end

	def show
		@product = Product.find(params[:id])
		@quantity = @product.quantity
		@quantity_numbers = (1..@quantity).to_a
	end

	def show_seller_products
		@user = User.find(current_user)
		@products = @user.products
	end

	def show_merchant
		@user = User.find(params[:id])
		@products = @user.products.where(retired: false)
	end

	def show_animal
		@products = Product.where(animal: params[:animal]).where(retired: false)
	end

	def show_category
		@products = Product.where(category: params[:category]).where(retired: false)
	end

	def new
		@user = User.find(params[:id])
		@product = @user.products.new
		@category = Product.uniq.pluck(:category)
		@animal = Product.uniq.pluck(:animal)
		@category << "Create a Category"
	end

	def create
		@product = Product.new(product_create_params[:product])
		if @product.category == "Create a Category"
			@product.category = params[:product][:new_category]
		end
		if @product.save
    	redirect_to user_product_path(current_user.id)
  	else
  		render :new
  	end
	end

	def edit
    @product = Product.find(params[:id])
    @user = User.find(current_user.id)
    @quantity = @product.quantity
    @animal = Product.uniq.pluck(:animal)
    @category = Product.uniq.pluck(:category)
  end

  def update
    @product = Product.find(params[:user_id])
    @product.update_attributes(product_update_params[:product])
    redirect_to user_product_path(current_user.id)
  end

  def retire
  	@product = Product.find(params[:id])
  	@product.retired = true
  	@product.save
  	redirect_to user_product_path
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to user_product_path

  end

	private

	def product_create_params

		params.permit(product: [:name, :description, :price, :quantity, :category, :new_category, :photo_url, :user_id, :animal])
	end

	def product_update_params
		params.permit(product: [:name, :description, :price, :quantity, :animal, :category, :photo_url, :user_id])
	end

end
