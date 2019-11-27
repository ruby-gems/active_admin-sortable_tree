require "activeadmin"

module ActiveAdmin
  module SortableTree
    class Engine < ::Rails::Engine
      engine_name "active_admin-sortable_tree"

      initializer "active_admin-sortable_tree.precompile", group: :all do |app|
        app.config.assets.precompile += [
          "active_admin/sortable.css",
          "active_admin/sortable.js"
        ]
      end
    end
  end
end
