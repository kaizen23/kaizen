authorization do
 role :guest do
  has_permission_on :users, :to=>[:new,:create]
  has_permission_on :courses, :to=>[:show,:index]
  has_permission_on :lessons, :to=>[:show]	
  has_permission_on :pages, :to=>[:show]
  
  
 end 
  role :admin do
  has_permission_on :courses, :to=>[:show,:index,:edit,:update,:destroy,:new,:create]	
  has_permission_on :lessons, :to=>[:show,:index,:edit,:update,:destroy,:new,:create]	
  has_permission_on :users, :to=>[:show,:index,:edit,:destroy]
  has_permission_on :pages, :to=>[:show,:index,:edit,:update,:destroy,:new,:create]
  has_permission_on :accessible, :to=>[:manage,:new]	
 end
	
end
