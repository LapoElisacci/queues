# frozen_string_literal: true

module Queues
  class API
    class << self
      attr_accessor :rabbits

      def rabbit(schema, host)
        self.rabbits ||= []
        self.rabbits << Queues::Rabbit.configure(schema, host)
      end
    end
  end
end
