module Wedding
  class << self
    def post_install_message
      footer = <<'EOS'

==== Release notes for wedding gem ====

Now that you have installed this gem, you earn our immense respect.
You are the star guest of our wedding, you will receive our special
attention.
    Go ahead and type `wedding` (wihtout backticks) on the command
prompt to see the list of commands available with it. Print your
personal invitation, and fire your browser to see the location of
the event. We love you!

Prerita and Jai

=======================================

EOS
    end
  end
end