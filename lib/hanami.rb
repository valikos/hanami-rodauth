require 'hanami'
require 'hanami/auth'
require 'hanami/cli'
require 'hanami/commands/auth'
require 'hanami/rodauth/version'

module Hanami
end

Hanami::Cli.define_commands do
  desc 'auth', 'Generate an auth app'
  long_desc <<-EOS
  EOS
  def auth
    if options[:help]
      invoke :help, ['auth']
    else
      Hanami::Commands::Auth.new(options).start
    end
  end
end
