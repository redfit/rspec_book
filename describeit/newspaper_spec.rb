class Newspaper
end

describe Newspaper do
  it 'should be black' do
    Newspaper.new.colors.should include('black')
  end

  it 'should be white' do
    Newspaper.new.color.should include('white')
  end

  it 'should be read all over'
end
