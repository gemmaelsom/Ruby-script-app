# Import script from file
class ScriptImport
    def initialize(path_name)
        @path_name = path_name
    end

    def read_file
        return File.read(@path_name)
    end
end

