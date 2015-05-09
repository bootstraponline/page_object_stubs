module Stub
  module AngularPage
    class << self
      def goto; fail('stub called!'); end
      def download_button; fail('stub called!'); end
      def download_button_element; fail('stub called!'); end
      def download_button?; fail('stub called!'); end
    end
  end
end

module Kernel
  def angular_page
    Stub::AngularPage
  end
end unless Kernel.respond_to? :angular_page