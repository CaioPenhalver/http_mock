module HttpMock
  module Actions
    class BuildPath
      class << self
        def execute(relative_work_dir, relative_file_path)
          absolute_work_dir_path = build_work_dir_path(relative_work_dir)
          validate_work_dir_path(absolute_work_dir_path)
          absolute_file_path = build_file_path(absolute_work_dir_path, relative_file_path)
          validate_file_path(absolute_file_path)
          absolute_file_path
        end

        private

        def build_file_path(absolute_work_dir_path, relative_file_path)
          absolute_work_dir_path + "#{relative_file_path}.json"
        end

        def build_work_dir_path(relative_work_dir)
          Pathname.pwd + relative_work_dir
        end

        def validate_work_dir_path(absolute_work_dir_path)
          return if absolute_work_dir_path.directory?

          raise HttpMock::Errors::InvalidPath.new(absolute_work_dir_path.to_s)
        end

        def validate_file_path(absolute_file_path)
          return if absolute_file_path.file?

          raise HttpMock::Errors::FileNotFound.new(absolute_file_path.dirname.to_s,
                                                   absolute_file_path.basename.to_s)
        end
      end
    end
  end
end
