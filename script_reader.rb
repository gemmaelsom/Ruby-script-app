class ScriptReader
    def initialize(path_name)
        @path_name = path_name
    end

def print_file
    p File.read(@path_name)
end
end