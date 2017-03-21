ActiveAdmin.register Page do
  permit_params :title, :section_id, :body, :order, :is_published, :menu_display, :featured

  form do |f|
    f.inputs "Detalles" do
      f.input :title, label: "Título"
      f.input :section, label: "Sección"
      f.input :body, as: :html_editor, label: "Contenido"
      f.input :order, label: "Orden"
      f.input :is_published, label: "Publicada"
      f.input :featured, label: "Destacada"
      f.input :menu_display, label: "Mostrar en menu"
      f.actions
    end
  end

  index do
    column :id
    column :title, sortable: :title
    column :section, sortable: :section
    column :created_at, sortable: :created_at
    column :order
    actions
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
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
