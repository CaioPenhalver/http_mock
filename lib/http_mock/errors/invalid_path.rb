module HttpMock
  module Errors
    class InvalidPath < StandardError
      def initialize(path)
        super "'#{path}' it is not a directory"
      end
    end
  end
end


