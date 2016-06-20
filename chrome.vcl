# Voice commands for chrome



New tab = {ctrl + T};

Close tab = {ctrl+w};

Letters = {f};

Previous = {ctrl + shift +tab};
Previous 1..10 = {ctrl+shift+tab_$1};
Next = {ctrl + tab};
Refresh = {ctrl+r};
Macro = {f} Wait(500){a} Wait(100){d} Wait(3500){f};
Concrete = {f} Wait(500) {s_2};
Jump to 1..10 = {ctrl+$1};

url() := {ctrl+l};
Nav = url();
Edit Events = url() "https://tealeaf.us.dell.com/Portal/EventEditor.aspx" {Enter};
Edit Dashes = url() "https://tealeaf.us.dell.com/Portal/DashboardConfig.aspx?selection=0" {Enter};