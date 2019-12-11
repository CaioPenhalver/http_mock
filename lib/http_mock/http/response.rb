module HttpMock
  module Http
    class Response
      attr_accessor :body, :headers, :code

      def initialize(hash)
        hash.each { |f, v| send("#{f}=", v) if respond_to?("#{f}=") }
      end
    end
  end
end
