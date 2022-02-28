# frozen_string_literal: true

require 'rails/generators'

# Creates the Queues initializer file for Rails apps.
#
# @example Invokation from terminal
#   rails generate queues
#
class QueuesGenerator < Rails::Generators::Base
  desc "Description:\n  This prepares Rails for Queues"

  source_root File.expand_path('templates', __dir__)

  desc 'Initialize Rails for Queues'

  def generate_layout
    template 'initializer.rb', 'app/queues/base.rb'
    readme 'README'
  end
end
