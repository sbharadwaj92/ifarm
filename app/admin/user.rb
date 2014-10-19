ActiveAdmin.register User do
#remove_filter :storage_total_stat
form do |f|
  f.inputs do
    f.input :name
    f.input :date_of_birth
    f.input :email
    f.input :password
    f.input :password_confirmation

  end
  f.actions
end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
