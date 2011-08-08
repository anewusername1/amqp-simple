module AMQPSimple
  class Connect
    class << self
      def connect(opts={})
        unless(EM.reactor_running?)
          Thread.new { EM.run }
        end
        EM.next_tick { AMQP.connect(opts) }
      end

      def connection
        AMQP.connection
      end

      def connected?
        @connection && @connection.connected?
      end
    end
  end
end
