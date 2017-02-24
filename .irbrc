require 'rubygems'
require 'irb/completion'
require 'irb/ext/save-history'


begin
  require "awesome_print"
  AwesomePrint.pry!
rescue LoadError => err
  warn "Couldn't load awesome_print: #{err}"
end


IRB.conf[:EVAL_HISTORY] = 2000
IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"


def cls
  system('cls')
end
puts ("IRB Configuration is Loaded!")
