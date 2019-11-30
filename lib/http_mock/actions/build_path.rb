require 'pathname'

module HttpMock
  module Actions
    class BuildPath
      def execute(path)
        Pathname.pwd + path
      end
    end
  end
end
