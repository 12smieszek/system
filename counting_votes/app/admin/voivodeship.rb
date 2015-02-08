ActiveAdmin.register Voivodeship do
  permit_params :name, :authorized_number, :mandate_number
  

  index do
    selectable_column
    id_column
    column :name
    column :authorized_number
    column :mandate_number
    #actions defaults: true do |user|
    #  link_to 'Show constituencies', show_constituencies_admin_voivodeships_path(voivodeship)
    #end
  end

    form do |f|
    f.inputs "Voivodeship", :multipart => true do
      f.input :name
      f.input :authorized_number
      f.input :mandate_number
      f.actions
    end
  end

  #member_action :show_constituencies, method: :get do
  #  @constituencies = Constituency.all((params[:voivodeship_id]) == Voivodeship.find(params[:id]))
  #end

end