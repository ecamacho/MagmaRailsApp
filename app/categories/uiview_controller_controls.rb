class UIViewController

  def add_outlet(ivar_name, toControlWithTag: tag)
    self.class.class_eval{attr_accessor ivar_name}
    connect_outlet ivar_name, toControlWithTag: tag
  end

  def connect_outlet(ivar_name, toControlWithTag: tag)
    a_view = view.viewWithTag(tag)
    instance_variable_set "@#{ivar_name}", a_view
  end

  def add_action(action, fromControlWithTag:tag, to:target, forControlEvents:controlEvents)
    a_control = view.viewWithTag(tag)
    a_control.addTarget(target, action:action, forControlEvents:controlEvents)
  end

  def standardBackgroundColor
    UIColor.colorWithRed( 34.0/100.0, green:34.0/100.0, blue:34.0/100.0, alpha:1.0 )
  end  

  def magmaRedColor
    UIColor.colorWithRed( 100.0, green:0.0, blue:0.0, alpha:1.0 )
  end  

  def magmaYellowColor
    UIColor.colorWithRed( 100/100, green:204/100, blue:51.0/100.0, alpha:1.0 )
  end  
  
  def magmaOrangeColor
    UIColor.colorWithRed( 247.0/255.0, green:148.0/255.0, blue:29.0/255.0, alpha:1.0 )
  end  
end
