\ProvidesClass{LetterTemplate}[2015/02/28 CV class]
\LoadClass{article}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFINE THE COMMANDS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\input{static_data.tex}
\input{dynamic_data.tex}
\newcommand\tel[1]{\def \@tel {Tel: #1}}
\newcommand\recieverone[1]{\def \@recieverone {#1}}
\newcommand\recievertwo[1]{\def \@recievertwo {#1}}
\newcommand\recieverthree[1]{\def \@recieverthree {#1}}

\def \@tel {}
\def \@recieverone{}
\def \@recievertwo{}
\def \@recieverthree{}
%\@reciever{}
%usepackages
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage[a4paper,
left=3cm, right=2cm,
top=3cm, bottom=1cm]{geometry}
\usepackage{helvet}
% PAGE FORMAT
\pagestyle{empty}
\renewcommand{\familydefault}{\sfdefault}
\setlength{\textwidth}{160mm}
\setlength{\textheight}{240mm}
  % fancyheader
\headwidth160mm
% document left side
%\hoffset0mm 
%\oddsidemargin1mm
% document top
\voffset-10mm 
\headheight20mm
\headsep0mm
%\topmargin30mm
\parindent 0pt
% document bottom
%\footskip25mm % shifts text to the top
% side notice section
\marginparsep0mm
\marginparwidth0mm

% return address
\newsavebox\areturn
\sbox{\areturn}{\parbox{80mm}{\underline
    {
      \small \fromname
     \hspace{\fill} \fromstreet
     \hspace{\fill} \fromplace }
   \rule[-2mm]{0mm}{2mm}}}



% company address
\begin{document}
\tel {hallo}
\thispagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\parbox[t][20mm]{50mm}{\from} 
\par\vspace{10mm}
\parbox[b][15mm]{90mm}{\fromdate}
\parbox[b][15mm]{55mm} {Daniel Schmid \\ Dorfstrasse 52 \\ 3185 Geroldswil} \\\\
\par 
\textbf{Subject} \\

Sehr geehrter Herr Schmid \\\\
isl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diaLorem ipsum dolor sit amet, conset
%\rule[2mm]{10mm}{4mm}
\vspace{10mm}
\par\hspace{90mm}Mit freundlichen Grüssen
\par\vspace{15mm}\hspace{90mm}Daniel Schmid
\end{document}
