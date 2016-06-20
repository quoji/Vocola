# Voice commands for outlook


$if "Microsoft Outlook";
  New Message = {Ctrl+n};
  Reply to Message = {Ctrl+r};
  Reply to All = {Ctrl+Shift+r};
  Forward Message = {Ctrl+f};
$end

$if "Message (Plain Text)";
  Send That = {Alt+s};
$end

$if Calendar;
  View Month = {Alt+m};
  View Work Week = {Alt+r};
$end

