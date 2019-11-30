module HttpMock
  module Actions
    class ReadFile
      def execute(path)
        File.read(path)
      end
    end
  end
end
