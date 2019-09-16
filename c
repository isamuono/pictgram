
[1mFrom:[0m /home/ec2-user/environment/ruby_projects/pictgram/app/controllers/sessions_controller.rb @ line 7 SessionsController#create:

     [1;34m5[0m: [32mdef[0m [1;34mcreate[0m
     [1;34m6[0m:   binding.pry
 =>  [1;34m7[0m:   user = [1;34;4mUser[0m.find_by(user_params)
     [1;34m8[0m:   [32mif[0m user && user.authenticate(params[[33m:session[0m][[33m:password[0m])
     [1;34m9[0m:     log_in user
    [1;34m10[0m:     redirect_to root_path, [35msuccess[0m: [31m[1;31m'[0m[31mログインに成功しました[1;31m'[0m[31m[0m
    [1;34m11[0m:   [32melse[0m
    [1;34m12[0m:     flash.now[[33m:danger[0m] = [31m[1;31m'[0m[31mログインに失敗しました[1;31m'[0m[31m[0m
    [1;34m13[0m:     render [33m:new[0m
    [1;34m14[0m:   [32mend[0m
    [1;34m15[0m: [32mend[0m

