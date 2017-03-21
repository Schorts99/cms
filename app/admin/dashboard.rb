ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Páginas recientes", priority: 1 do
      table_for Page.order("id desc").limit(20) do
        column :id
        column "Titulo de la página", :title do |page|
          link_to page.title, [:admin, page]
        end
        column "Sección", :section, sortable: :section
        column "Creado el", :created_at
      end
    end

    section "Secciones recientes", priority: 1 do
      table_for Section.order("id desc").limit(20) do
        column :id
        column "Nombre de la sección", :title do |section|
          link_to section.name, [:admin, section]
        end
        column "Creado el", :created_at
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
