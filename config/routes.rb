Rails.application.routes.draw do
  get("/", { :controller => "omni", :action => "home"})

  get("/square/results", { :controller => "omni", :action => "square"})

  get("/square/new", { :controller => "omni", :action => "home"})

  get("/square_root/new", { :controller => "omni", :action => "sqrt"})

  get("/square_root/results", { :controller => "omni", :action => "sqrt_results"})

  get("/payment/new", { :controller => "omni", :action => "pay"})

  get("/payment/results", { :controller => "omni", :action => "pay_results"})

  get("/random/new", { :controller => "omni", :action => "ran"})

  get("/random/results", { :controller => "omni", :action => "ran_results"})

end
