# coding: utf-8

require 'tty-spinner'
require 'pastel'

class RevealGender
  MESSAGES = [
    'Booting up gender maker',
    'Gathering requirements',
    'Unpacking baby components',
    'Generating baby gender',
    'Running all tests for baby',
    'All tests PASSED!',
    'Deploying to production',
    'Finished in 22.53 seconds (baby gender took 20 weeks to determine)'
  ].freeze

  def call
    pastel = Pastel.new
    spinner = TTY::Spinner.new("#{pastel.cyan(':spinner')} - #{pastel.yellow(':msg...')}", format: :bouncing_ball)

    MESSAGES.each do |message|
      spinner.update(msg: message)

      if MESSAGES.last != message
        21.times do
          spinner.spin
          sleep(0.1)
        end
      end
    end

    spinner.success(pastel.cyan(File.read('boy.txt')))
  end
end

RevealGender.new.call