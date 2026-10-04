hl.on("hyprland.start", function () 
  hl.exec_cmd("swaybg -i ~/Downloads/alps-autumn-alps-mountains-forest-wilderness-landscape-1920x1080-1265.jpg -m fill") -- Background
  hl.exec_cmd("waybar") -- Bar on Top
  hl.exec_cmd("wl-paste --type text --watch cliphist store") -- Clipboard
  hl.exec_cmd("cliphist wipe") -- Clear clipboard history
end)