# frozen_string_literal: true

module Queues
  class API
    class << self
      attr_accessor :rabbits

      #
      # Register Rails Queue RabbitMQ Framework schemas
      #
      # @param [Queues::Rabbit::Schema] schema queue-rabbit Schema
      # @param [String] host RabbitMQ URI
      #
      def rabbit(schema, host)
        self.rabbits ||= []
        self.rabbits << Queues::Rabbit.configure(schema, host)
      end
    end
  end
end
