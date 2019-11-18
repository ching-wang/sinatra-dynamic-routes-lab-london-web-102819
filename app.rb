require_relative "config/environment"

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    @num = params[:number]
    @squared_number = @num.to_i * @num.to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phr = params[:phrase]
    @phr * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    [@w1, @w2, @w3, @w4, @w5].join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operator == "add"
      "#{@num1 + @num2}"
    elsif @operator == "subtract"
      "#{@num1 - @num2}"
    elsif @operator == "multiply"
      "#{@num1 * @num2}"
    else @operator == "divide"
      "#{@num1 / @num2}"     end
  end
end
