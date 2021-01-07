require_relative "prompt/question"

module TTY
  class Prompt
    def initialize
      @stdout = $stdout
    end

    def ask(message = "")
      question = Question.new(self)
      question.call(message)
    end

    def print_message(message)
      @stdout.print message
    end

    def read_line
      gets.chomp
    end

    def render_answer(question, answer)
      refresh
      @stdout.puts("#{question} \e[32m#{answer}\e[0m")
    end

    private

    def refresh
      @stdout.print ("\e[A\e[K")
    end
  end
end
