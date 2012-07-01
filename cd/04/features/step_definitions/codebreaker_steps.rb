Given /^I am not yet playing$/ do
end

Given /^I start a new game$/ do
  Codebreaker::Game.new.start
end

