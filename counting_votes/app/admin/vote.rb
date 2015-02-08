ActiveAdmin.register Vote do
  permit_params :number, :constituency_id, :committee_id

  index do
    selectable_column
    id_column
    column :constituency
    column :committee
    column :number
  end

   form do |f|
    f.inputs "Vote", :multipart => true do
      f.input :constituency, :as => :select, :collection => Constituency.all.map{|u| ["#{u.name}", u.id]}
      f.input :committee, :as => :select, :collection => Committee.all.map{|u| ["#{u.name}", u.id]}
      f.input :number
      f.actions
    end
  end

end  