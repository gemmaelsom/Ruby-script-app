class ScriptSearch
    def initialize(path_name)
        @path_name = path_name
    end

    def search_for_file
        return File.read (@path_name)
    end
end