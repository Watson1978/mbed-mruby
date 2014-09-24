class AppDelegate
  attr :main_menu_layout

  def applicationDidFinishLaunching(notification)
    @main_menu_layout = MainMenu.new
    NSApp.mainMenu = @main_menu_layout.menu

    @main_controller = MainWindowController.alloc.init
    @main_controller.showWindow(self)
    @main_controller.window.orderFrontRegardless

    NSLog("awww dang")
    mrb = mrb_open()
    NSLog("I want to see the light of day!")
    mrb_load_string(mrb, "class TestClass; end")
    puts mrb_class_defined(mrb, "TestClass") # Should output 1 in the console
  end

end
