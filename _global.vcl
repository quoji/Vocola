# Global voice commands

$include folders.vch;
$include wait.vch;
$include menus.vch;

OK = {enter};
Cancel = {esc};
Store = save();
Close = {alt+F4};

dictate <_anything> = $1;

Switch = {alt+tab};

Link = {Win}{l}{y}{enter};
Chauncy = {Win}{l}{y}{enter} w4() "chauncy f" w3() {Enter};
Chrome = {Win+1};
Sublime = {Win}{s}{u}{b} {enter};
Stamp = copy();
Penguin = {ctrl+home} Wait(500){f} Wait(500){a} Wait(100){d} Wait(2000){f} Wait(200){m} Wait(200){f} Wait(200){s_2};
Elephant = {ctrl+home} Wait(500){f} Wait(500){f} Wait(100){d} Wait(1000){f} Wait(1000){d} Wait(200){w};
Find = {ctrl+f};
Overwrite = {ctrl+a}{ctrl+v};
Fill out 1..10 = Repeat($1, {tab}{ctrl+v});
Pasta = paste();


Folder <folder> = {Alt+d} $1 {Enter};

$if Open | New | Save | File | Attachment | Browse | Directory;
  Folder <folder> = $1\{Enter};
$end


