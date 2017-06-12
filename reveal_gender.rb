require 'tty-spinner'

spinner = TTY::Spinner.new("[:spinner] Determining baby gender...", format: :bouncing_ball)

15.times do
  spinner.spin
  sleep(0.1)
end

spinner.stop(File.read('boy.txt'))