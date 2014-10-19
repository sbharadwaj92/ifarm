ActiveAdmin.register User do
  #remove_filter :storage_total_stat
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :sign_in_count
    column :created_at
    column :confirmed_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  filter :name
  filter :email
  permit_params :name, :email, :password, :password_confirmation
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
