# SimpleGameInRuby

A simple game in ruby where a ship travel int the space to collect stars. The more stars it collects the greater its score become.

## What is SimpleGameInRuby?

In October 2015 I attended a Ruby course and I was looking for something interesting to implement with this language. Looking around 
the web I found Gosu. It is a Ruby library for Game development, for more information on it [visit its wiki on github](https://github.com/gosu/gosu/wiki).
In this wiki I found [the gosu_examples a tutorial to build an easy game step by step](https://github.com/gosu/gosu/wiki/Ruby-Tutorial).

## Usage

Here the necessary steps to run SimpleGameInRuby. The assumption here is that you are using Windows as operating system. For Linux and Mac the differences should me minimal.

1. Download Github [from here](https://desktop.github.com/) and install it on your Windows.
2. Download Ruby [from here](http://railsinstaller.org/en) and install it.
3. Open a github shell
4. Run the command: _cd c:\_
5. Run the command: _git clone https://github.com/sasadangelo/SimpleGameInRuby.git_. The folder C:\SimpleGameInRuby will be created with source code inside.
6. Open a dos shell
7. Run the command: _cd c:\SimpleGameInRuby\stepX_ where X is a number between 1 and 5. 
8. Run the command: _gem install gosu_. This will install the Ruby game library gosu. If you got a SSL connection problem check the troubleshooting section.
9. Run the command: _ruby GameWindow.rb_ to start the video game.

## TroubleShooting

If step 8 fails for a SSL connection problem this is a well known ruby issue. To solve it do the following:

1. Download the following [pem certificate](https://raw.githubusercontent.com/rubygems/rubygems/master/lib/rubygems/ssl_certs/AddTrustExternalCARoot-2048.pem)
2. Run the command: _gem which rubygems_. This command will print a path like this one <ruby install directory>/lib/ruby/2.1.0/rubygems.rb. You must store the pem certificate in <ruby install directory>/lib/ruby/2.1.0/rubygems/ssl_certs.
3. Run again the command: _gem install gosu_.
