#!/usr/bin/env ruby
require 'json'
require 'uri'

def command?(command)
    system("which #{ command} > /dev/null 2>&1")
end

def assert_command(command,message)
    unless command?(command)
        STDERR.puts "Cannot find #{command}: #{message}"
        exit 1
    end
end

def check_dependencies!
    assert_command "ack-grep","apt-get install ack-grep"
end

check_dependencies!
system "mkdir -p bundle"
system "cp vimrc ~/.vimrc"
plugin_data = JSON.parse File.read('plugins.json')
plugin_data.each do |plugin|
    plugin_uri = URI.parse plugin
    dir_name = File.basename(plugin_uri.path,'.git')
    if File.exists? File.join('bundle',dir_name)
        puts "Updating #{dir_name}"
        system "cd bundle/#{dir_name} && git pull"
    else
        puts "Need to install #{dir_name}"
        system "cd bundle; git clone #{plugin}"
    end
end
