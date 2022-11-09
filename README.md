# who_is_nastavnik
Find out who is nastavnik (Russian for coach) BASH script
<pre>
__        ___             _                       _                    _ _
\ \      / / |__   ___   (_)___   _ __   __ _ ___| |_ __ ___   ___ __ (_) | __
 \ \ /\ / /| '_ \ / _ \  | / __| | '_ \ / _` / __| __/ _` \ \ / / '_ \| | |/ /
  \ V  V / | | | | (_) | | \__ \ | | | | (_| \__ \ || (_| |\ V /| | | | |   <
   \_/\_/  |_| |_|\___/  |_|___/ |_| |_|\__,_|___/\__\__,_| \_/ |_| |_|_|_|\_\

</pre>

![](http://samoylov.fun/img/roadInKislovodskPark.webp)

- script with menue to find out who is nastavnik (coach) today
- supports any number of people, who are coaches, could be teams or shifts
- daily (24 hours), two days (48 hours) shifts are supported
- easily change program. It will rewrite datafile. nastavnik_main.sh will be
  left intact.

## How to use who_is_nastavnik:
- copy nastavnik_main.sh and change_nastavniki.sh to your computer
- check code and, if needed, change to your liking
- make nastavnik_main.sh executable: $ chmod +x
- place both files to your scripts directory (for example .bin/)
- write alias in your .zshrc or .bashrc (alias nastavnik='~/Scripts/nastavnik_main.sh')
- source .zshrc or .bashrc

> now you can use $nastavnik in your terminal to check who is on duty today.
> Enjoy!
