

  
namespace :check do
     task(:update => :environment) do
     	Admin.all.each do |a|
     	if Photo.last.created_at < (Date.today - 7.days) 
     		AdminMailer.check(a).deliver! 
     	end
     end
  end
end
