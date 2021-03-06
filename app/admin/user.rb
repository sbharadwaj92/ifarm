ActiveAdmin.register User do
  #remove_filter :storage_total_stat
  index do
    selectable_column
    id_column
    column :name
    column :username
    column :village
    column :crops_grown
    column :sign_in_count
    column :created_at
    column :confirmed_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :username
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  filter :name
  filter :username
  permit_params :name, :username, :password, :password_confirmation

  controller do

    def update
      if params[:user][:password].blank?
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end

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
