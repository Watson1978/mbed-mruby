class AppDelegate
  attr :main_menu_layout

  def applicationDidFinishLaunching(notification)
    @main_menu_layout = MainMenu.new
    NSApp.mainMenu = @main_menu_layout.menu

    @main_controller = MainWindowController.alloc.init
    @main_controller.showWindow(self)
    @main_controller.window.orderFrontRegardless

    mrb = Pointer.new(:object)
    NSLog("awww dang")
    mrb[0] = mrb_open()
    NSLog("I want to see the light of day!")
    mrb_load_string(mrb[0], "class TestClass; end")
    puts mrb_class_defined(mrb[0], "TestClass") # Should output 1 in the console
  end

end
