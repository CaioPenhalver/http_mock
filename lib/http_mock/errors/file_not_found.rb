module HttpMock
  module Errors
    class FileNotFound < StandardError
      def initialize(file_name, path)
        super "File #{file_name} not found. Looking for at #{path}"
      end
    end
  end
end

