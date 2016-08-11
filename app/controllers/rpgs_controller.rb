class RpgsController < ApplicationController
@@time = Time.new
  def index
      if !session[:gold_count] and !session[:activities]
          session[:gold_count] = 0
          session[:activities] = []
      @activities = session[:activities]
  end
  end
  def cave
      @random_num = rand(5..10)
      @timestamp = @@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_num
      session[:activities].push("Earned #{@random_num} golds from the cave! (#{@timestamp})")
      redirect_to '/'
  end
  def farm
      @random_num = rand(10..20)
      @timestamp = @@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_num
      session[:activities].push("Earned #{@random_num} golds from the farm! (#{@timestamp})")
      redirect_to '/'
  end
  def house
      @random_num = rand(2..5)
      @timestamp = @@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_num
      session[:activities].push("Earned #{@random_num} golds from the house! (#{@timestamp})")
      redirect_to '/'
  end
  def casino
      @random_num = rand(-50..50)
      @timestamp = @@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_num
      if @random_num < 0
          session[:activities].push("Entered the casino. Ouch! You lost #{@random_num} golds! (#{@timestamp})")
      else
          session[:activities].push("Earned #{@random_num} golds from the casino! (#{@timestamp})")
      end
      redirect_to '/'
  end
  def reset
    session.clear
    redirect_to '/'
  end
end
