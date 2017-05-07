ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	permit_params :role

	index do
  	selectable_column
  	column :id
  	column :name
  	column :email
  	column :created_at
  	column :updated_at
  	column :role
  	actions defaults: false do |user|
  		item "Edit", edit_admin_user_path(user)
  	end
	end


	# controller do
	# 	def update

	# 	end
	# end
end
