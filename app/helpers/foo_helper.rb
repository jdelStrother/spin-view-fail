puts "Loading Foo"
module FooHelper
  def self.included(base)
    puts "Including FOo into #{base.inspect}"
    # puts caller[0..10].join("\n")
    class<<base
      def inspect
        "!!ModuleWithFoo!!"
      end
    end
    super
  end
  def a_helper_method
    'hi!'
  end
end
