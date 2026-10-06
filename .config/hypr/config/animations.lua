-- Curves
hl.curve("easeOutQuint",{type="bezier",points={{0.22,1},{0.36,1}}})
hl.curve("smooth",{type="bezier",points={{0.22,1},{0.36,1}}})
hl.curve("quick",{type="bezier",points={{0.25,0.8},{0.35,1}}})
hl.curve("linear",{type="bezier",points={{0,0},{1,1}}})

-- Spring
hl.curve("smoothSpring",{type="spring",mass=1,stiffness=250,dampening=22})

-- Animations
hl.animation({leaf="global",enabled=true,speed=7,bezier="smooth"})
hl.animation({leaf="border",enabled=true,speed=5,bezier="easeOutQuint"})
hl.animation({leaf="windows",enabled=true,speed=4,spring="smoothSpring"})
hl.animation({leaf="windowsIn",enabled=true,speed=3.5,spring="smoothSpring",style="popin 90%"})
hl.animation({leaf="windowsOut",enabled=true,speed=3,bezier="easeOutQuint",style="popin 90%"})
hl.animation({leaf="fadeIn",enabled=true,speed=2.5,bezier="smooth"})
hl.animation({leaf="fadeOut",enabled=true,speed=2.5,bezier="smooth"})
hl.animation({leaf="fade",enabled=true,speed=3,bezier="quick"})
hl.animation({leaf="layers",enabled=true,speed=4,bezier="easeOutQuint"})
hl.animation({leaf="layersIn",enabled=true,speed=3.5,bezier="easeOutQuint",style="fade"})
hl.animation({leaf="layersOut",enabled=true,speed=3,bezier="easeOutQuint",style="fade"})
hl.animation({leaf="fadeLayersIn",enabled=true,speed=2.5,bezier="smooth"})
hl.animation({leaf="fadeLayersOut",enabled=true,speed=2.5,bezier="smooth"})
hl.animation({leaf="workspaces",enabled=true,speed=4,bezier="smooth",style="fade"})
hl.animation({leaf="workspacesIn",enabled=true,speed=2,bezier="smooth",style="fade"})
hl.animation({leaf="workspacesOut",enabled=true,speed=2,bezier="smooth",style="fade"})
hl.animation({leaf="zoomFactor",enabled=true,speed=5,bezier="quick"})
