class OmniController < ApplicationController

  def home
    render ({ :template => "omni_templates/home"})
  end
  
  def square
    @num = params.fetch("number").to_f
  
    @result = @num * @num
    @result = @result.to_f
  
    @cat = "Square"
  
    @next_cmd_str = "Calculate another square"
    @next_cmd = "/square/new"

    render ({ :template => "omni_templates/flexible"})
  end
  
  def sqrt
    render ({ :template => "omni_templates/sqrt"})
  end
  
  def sqrt_results
    @num = params.fetch("number").to_f
  
    @result = Math.sqrt(@num)
    @result = @result.to_f
  
    @cat = "Square Root"
  
    @next_cmd_str = "Calculate another square root"
    @next_cmd = "/square_root/new"
  
    render ({ :template => "omni_templates/flexible"})
  end
  
  def pay
    render ({ :template => "omni_templates/pay"})
  end
  
  def pay_results
    @apr = params.fetch("apr").to_f
    @apr_formatted = @apr.to_fs(:percentage, {:precision => 4})
    @apr = @apr / 1200
  
    @years = params.fetch("yrs").to_i
    @months = @years * 12
  
    @principal = params.fetch("principal").to_f
    @principal_formatted = @principal.to_fs(:currency)
  
    @payment = @apr * @principal
    @payment = @payment / (1 - ((1 + @apr) ** (-@months)))
    @payment = @payment.to_fs(:currency)
  
    render ({ :template => "omni_templates/pay_results"})
  end
  
  def ran
    render ({ :template => "omni_templates/ran"})
  end
  
  def ran_results
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
  
    @random = rand(@min..@max)
  
    render ({ :template => "omni_templates/ran_results"})
  end

end
