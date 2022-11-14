# who_is_nastavnik
Find out who is nastavnik (Russian for coach) BASH script
<pre>
██╗    ██╗██╗  ██╗ ██████╗     ██╗███████╗
██║    ██║██║  ██║██╔═══██╗    ██║██╔════╝
██║ █╗ ██║███████║██║   ██║    ██║███████╗
██║███╗██║██╔══██║██║   ██║    ██║╚════██║
╚███╔███╔╝██║  ██║╚██████╔╝    ██║███████║
 ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝     ╚═╝╚══════╝
                                          
███╗   ██╗ █████╗ ███████╗████████╗ █████╗ ██╗   ██╗███╗   ██╗██╗██╗  ██╗
████╗  ██║██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██║   ██║████╗  ██║██║██║ ██╔╝
██╔██╗ ██║███████║███████╗   ██║   ███████║██║   ██║██╔██╗ ██║██║█████╔╝ 
██║╚██╗██║██╔══██║╚════██║   ██║   ██╔══██║╚██╗ ██╔╝██║╚██╗██║██║██╔═██╗ 
██║ ╚████║██║  ██║███████║   ██║   ██║  ██║ ╚████╔╝ ██║ ╚████║██║██║  ██╗
╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝
</pre>

![](https://github.com/sergey-samoylov/who_is_nastavnik/blob/main/nastavniki_1.png)

- script with menue to find out who is nastavnik (coach) today
- supports any number of people, who are coaches, could be teams or shifts
- daily (24 hours), two days (48 hours) shifts are supported
- easily change program. It will rewrite datafile. nastavnik_main.sh will be
  left intact.
- if you prefer GUI version, there's now one with photo and buttons options

## How to use who_is_nastavnik:
- copy nastavnik_main.sh and change_nastavniki.sh to your computer
- check code and, if needed, change to your liking
- make nastavnik_main.sh executable: $ chmod +x
- place both files to your scripts directory (for example .bin/)
- write alias in your .zshrc or .bashrc (alias nastavnik='~/Scripts/nastavnik_main.sh')
- source .zshrc or .bashrc
- for those, from GUI-only realm, you can use just that function and make it
  an app all by itself.

> now you can use $nastavnik in your terminal to check who is on duty today.
> Enjoy!

![](https://github.com/sergey-samoylov/who_is_nastavnik/blob/main/nastavniki3.png)
![](https://github.com/sergey-samoylov/who_is_nastavnik/blob/main/nastavniki_4.png)
