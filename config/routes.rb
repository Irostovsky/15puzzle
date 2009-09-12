ActionController::Routing::Routes.draw do |map|

  map.resource :plays, :only => [:new, :edit]
  map.root :controller => "plays", :action => 'new'

end
