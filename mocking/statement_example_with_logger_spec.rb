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
  it "logs a message on generate()" do
    customer = stub('customer')
    customer.stub(:name).and_return('Aslak')
    logger   = mock('logger')
    statement = Statement.new(customer, logger)

    logger.should_receive(:log).with(/Statement generated for Aslak/)

    statement.generate
  end
end

