require_relative '../script_import'
require_relative '../script_reader'
require_relative '../script_search'

describe ScriptImport do
  it 'should read users file' do
    sut = ScriptImport.new('./spec/test.txt')
    expect(sut.read_file).to eq('content')
  end
end

describe ScriptReader do
  it 'should print all lines except for users character' do
    sut = ScriptReader.new('./spec/test.txt')
    expect(sut.print_file).to eq('content')
  end
end

describe ScriptSearch do
  it 'should fetch data from database' do
      sut = ScriptSearch.new('./spec/test.txt')
      expect(sut.search_for_file).to eq('content')
    end
end