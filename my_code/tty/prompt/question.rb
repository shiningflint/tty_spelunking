module TTY
  class Prompt
    class Question
      def initialize(prompt)
        @prompt = prompt
      end

      def call(message = "")
        @message = message
        render_question(@message)
        @answer = process_input
        render_answer
        @answer
      end

      private

      def render_question(question)
        @prompt.print_message(question + " ")
      end

      def process_input
        @prompt.read_line
      end

      def render_answer
        @prompt.render_answer(@message, @answer)
      end
    end
  end
end
