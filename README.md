# thesisby for debian users

Гэты варыянт выкарыстаны практычна ў 2018-2019 гг. Заўваг ВАК па афармленню не было.

Гэтая версія зробленая на аснове thesisby 1.1. (https://github.com/belgraviton/thesisby).
Тэставанне праведзена ў Debian 8, 9.

Асноўныя змены:
* кропкі пасля нумароў табліц longtable;
* кропкавыя злучнікі пасля ўсіх назваў раздзелаў зместу;
* кадаванне зменена на UTF-8;
* малюнкі ў дырэкторыі fig/;
* дадазена асяроддзе myabstractbibliography і прасцейшыя shell-скрыпты для аўтаматызацыі зборкі дысертацыі (THESIS) и аўтарэферату (ABSTRACT) (гл. файлы *.sh; у сувязі з гэтым файлы з імёнамі *_readonly.* рэдавагаваць не трэба!!! -- яны генеруюцца аўтаматычна);
* выкарыстоўваем шрыфт падобны да Times New Roman -- пакет pscyr;
* грэчаскія літары робім прамымі, лацінскія пакідаем нахільнымі (normalgreek.tex ці normalgreek2.tex на Ваш выбар);
* крыху зменены gost71s2003.bst -- у дыссертацыях ля колькасці старонак замест с. ставім л. ( як тут: https://vak.gov.by/bibliographicDescription);
* літаратура дысертанта пішацца ў mybib.tex. Гэты спіс падзелены на раздзелы: артыкулы ВАК; артыкулы іншыя; тэзісы і канференцыі;
* бібліяграфія з bibliography.bib (я рабіў у jabref) -- глядзі арыгінальны thesisby;

ps.
* для зборкі дысертацыі выконвайце makethesis.sh;
* для зборкі аўтарэферату выконвайце makeabstract.sh;
* для зборкі дысертацыі і аўтарэферату разам (напрыклад, калі пішаце ці робіце вёрстку агульнай характарыстыкі і/або заключэння) выконвайце makeall.sh (для фарматавання і інш. дзеянняў карыстайцеся лічыльнікам isthesis і асяроддзем ifthen -- прыклады гл. у *.tex).


pps.
* на месцы сініх каракуляў у аўтарэфераце павінны быць подпісы сакратара і аўтара :).
* аўтарэферат пад патрабаванні тыпаграфіі БНТУ ад 2018 г.

Патрэбныя пакеты Debian:
* pybtex;
* tex-pscyr;
* texlive-full;
* апцыянальна texmaker, jabref, Inkscape...
...шукайце па рэпазіторыях.


## Спасылкі
* [thesisby](https://github.com/belgraviton/thesisby);
* [Записки дебианщика -- многа карыснай інфармацыі па Latex і Debian](http://mydebianblog.blogspot.com/).

