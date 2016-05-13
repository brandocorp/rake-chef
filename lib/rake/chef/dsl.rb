module Rake
  module Chef
    module DSL

      private

      def recipe(id, &block)
        namespace :chef do
          namespace :recipe do
            desc "Run chef rake task #{id}"
            task id do
              Chef::Config[:solo] = true
              @chef_client = Chef::Client.new
              @chef_client.run_ohai
              @chef_client.load_node
              @chef_client.build_node
              run_context = Chef::RunContext.new(@chef_client.node, {}, @chef_client.events)
              recipe = Chef::Recipe.new("(rake-chef cookbook)", "(rake-chef recipe)", run_context)
              recipe.instance_eval(&block)
              runner = Chef::Runner.new(run_context)
              runner.converge
            end
          end
        end
      end
    end
  end
end
