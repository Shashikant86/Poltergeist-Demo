#Poltergeist 

Poltergeist is a headess capybara driver based on PhantomJS. This project is a demonstration of Poltergiest driver in your project. 



##Pre-requisite 

in order to use Poltergeist, You must have PhatomJs installed. It's very easy to install. 

On Mac : Use HomeBrew. Please note MacPort installtion is not recommended 

              $ brew install phantomjs

On Linux : Download PhantomJS from the official site and add binary to your PATH [ Note 64 bit and 32 bit ]
              
                $ wget https://phantomjs.googlecode.com/files/phantomjs-1.9.0-linux-x86_64.tar.bz2

And create symlink  phantomjs/bin to your /usr/local/bin and /usr/bin

On Ubuntu, you can use basic phantomjs package like this 

                $ sudo apt-get install phantomjs
              
              

#Usage 

Note: You need to have Ruby 1.9.3 and Capybara 2.1.0 for the latest Poltergeist version. Please make sure you have Ruby 1.9.3 and Capybara 2.1.0 for this Demo.

### Clone the repository 


        $ git clone https://github.com/Shashikant86/Poltergeist-Demo.git
        $ cd Poltergeist-Demo
        
        
You may widh to do bundle update before running cucumber 

        $ bundle update 

Now run cucumber to see all the scenario passes using Poltergiest. 

        $ bundle exec cucumber


Now , if you got Ruby installed, you may need to check that Ruby version is compabtible with Poltergeist and Capybara version. 
If you got error then you can download Poltergeist gem by specifying Git repository. In order to do that you may need to update gemfile

         gem 'poltergeist', :git => 'git://github.com/jonleighton/poltergeist.git'


### Playing with Poltergiest

There are many things you could do with poltergeist like resizing window, taking screenshot, capturing network traffic, response headers, cookie 
There are few option in the sinatra_step_definition file. You can comment out and see those in action 

         #page.driver.resize(400,600)
         #page.save_screenshot("/Users/user/Desktop/test.pdf")
         #puts page.within_window
         #puts page.driver.network_traffic
         #puts page.driver.cookies
         #puts page.response_headers.to_a
         
### Customising Poltergeist Options 

You can customise Poltergeist with multiple options like JS error, debug, timeout and many more as mentioned on Poltergiest documentation
Take a look at features/Support/env.rb file how options are configured. you can play with it by changing values or adding more options in the array e.g :debug => true

           Capybara.register_driver :poltergeist do |app|
           options = {
                 :js_errors => false,
                 :timeout => 120,
                 :debug => false,
                 :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
                 :inspector => true,

          Capybara::Poltergeist::Driver.new(app, options)
          end





         
         









    
