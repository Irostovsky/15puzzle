ActionController::Routing::Routes.draw do |map|

  map.resource :plays, :only => [:new, :edit], 
    :member => { :jquery => :get }
  map.root :controller => "plays", :action => 'new'

end
