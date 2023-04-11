class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)

      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb" })
  end

  def losers
    @lost_numbers = Array.new

    5.times do
      number = rand(1...100)
      @lost_numbers.push(number)
    end

    render({ :template => "lottery_stuff/boohoo.html.erb" })
  end
end
