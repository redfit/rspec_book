class Statement
  def initialize(customer, logger = nil)
    @customer = customer
    @logger = logger
  end

  def generate
    name = @customer.name
    @logger.log("Statement generated for #{name}") if @logger
    "Statement for #{name}"
  end
end

describe Statement do
  it "uses the customer's name in the header" do
    customer = double('customer')
    customer.should_receive(:name).and_return('daisuke')
    statement = Statement.new(customer)
    statement.generate.should =~ /^Statement for daisuke/
  end
end

