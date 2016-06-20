# Voice commands for sublime_text
$include wait.vch;
$include directions.vch;
$include printable.vch;
$include menus.vch;
$include utility.vch;

Over = {ctrl+tab};
Under = {shift+ctrl+tab};

Lack() :=  "{";
Rack() :=  "}";

$include repeatable.vch;
<repeatable> 1..10 = Repeat($2, $1);

Brackets() :=  {{}{}}{Left};
Brackets = Brackets();

Peck = {Esc}{f}{"="}{l}{a};
Poke = {Esc}{f}{'"'}{a};
Ping <printable> = {Esc}{f}{$1}{a};

yank() := {y};
Yank = yank();
Yell = {Esc}{y_2};
Yell 1..10 = {Esc}{$1}{y_2};
Yelp = {Esc}{y_2}{p};
Yelp 1..10 = {Esc}{y}{$1}{y}{Down_$1}{p};
Yelper = {Esc}{y_2}{p} replace();

Chunk = {alt+s}{Down_8}{Enter};

front() := {Esc}{Shift+i};
Front = front();
back() := {Esc}{Shift+A};
Back = back();

Lack = Lack();
Rack = Rack();
Lift = lift();
Drop = Drop();
Wipe = replace();
Hop = Hop();
Multi = {ctrl+d};
Deal = Deal();

word() :=  {Esc}{w};
Word = word();

Deal() :=  {Esc}{d_2};

Ice() :=  {i};
Ice = Ice();

Sell 1..10 = {v}{Down_ Eval($1-1)};
Buy 1..10 = {v}{Up_ Eval($1-1)};

put() := {Esc}{p};
Put = put();

funk() := {Left} lp() rp() {Space}{:}{"="}{Space};
fudge() := lp() rp() {Space}{:}{"="}{Space};
Funk = fudge();

get() := yank() {a}{w};
fun() := front() {Esc} get() w2() {Up} {o} put() back() funk() {Down} front() word() word() rent() yank() {Up} back() put() front() {Esc} get() {Down} word() word() rent() {p} back() lp() rp() {";"} {Esc};
Fund = fun();

repeat() := "Repeat(\$1," back() {Left} rp();
Repeat = repeat();

undo() := {Esc}{u};
Undo = undo();
Undo 1..10 = Repeat($1,{Esc}{u});

Redo() :=  {ctrl+y};
Redo = Redo();
Redo 1..10 = Repeat($1,Redo());

lp() := {"("};
rp() := {")"};
Lap = lp();
Rap = rp();
Pair = lp() rp() {Left};

replace() := {Esc}{d}{a}{w}{i};

Hop() :=  {Tab};

lift() := {Esc}{ctrl+shift+Up};

Drop() := {Esc}{ctrl+shift+Down};

rent() := {Esc}{shift+End};
Rent = rent();
Lent() :=  {Esc}{shift+Home};
Lent = Lent();


block() := {Esc}{i}{{}{}}{Left}{Enter};
Block = block();
Line() :=  {Esc}{o};
Line = Line();
Clear() :=  {Esc}{Shift+d}{i};
Clear = Clear();

Get = {Esc}{y}{a}{w};

$if .java;
  If Block = {i}{f} Wait(300) {Enter};
  If Variable = {i}{f} Wait(300) {Enter} {Esc}{p}{w}{i};
  For Loop = {f}{o}{r} Wait(300) {Enter};
$end

$if .pl | .py | .vcl | .vch;
  comment() := "#";
  New Comment = {End}{Enter} comment();
  Comb = front() comment() {Esc};

$elseif .java | .cs | .cpp | .h | .js;
  comment() := "// ";
  New Comment = {End}{Enter} comment();
$end


Off = {Esc};

