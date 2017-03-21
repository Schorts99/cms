ActiveAdmin.register Block do
  permit_params :title, :show_title, :body, :position,
  :display, :class_suffix, :order, :is_published

  form do |f|
    f.inputs "Detalles" do
      f.input :title, label: "Título"
      f.input :show_title, label: "Mostrar título"
      f.input :body, as: :html_editor, label: "Contenido"
      f.input :position, label: "Posición", as: :select, collection: [["Jumbotron", "jumbotron"],
      ["Bloque", "block"]]
      f.input :display, label: "Mostrar en", as: :select, collection: [["Todas las páginas", "all"],
      ["Solo en el inicio", "home"], ["Todo excepto en el inicio", "nohome"]]
      f.input :order, label: "Orden"
      f.input :class_suffix, label: "Sufijo de la clase"
      f.input :is_published, label: "Publicado"
      f.actions
    end
  end

  index do
    column :id
    column :title, sortable: :title
    column :position, sortable: :position
    column :display, sortable: :display
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
