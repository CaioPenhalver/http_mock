module HttpMock
  module Mock
    class Response
      attr_accessor :body, :query_string, :headers, :url, :code

      def initialize()
      end
    end
  end
end
