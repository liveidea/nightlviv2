class AdminMailer < ActionMailer::Base


    def check(admin)
            mail(:from => "danteteruk@gmail.com",
                     :to => admin.email,
                     :subject => "Need soome updates")
            end
end