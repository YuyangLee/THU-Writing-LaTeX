\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{wc-article}[Custom class for Writing and Communication Courses of Tsinghua University.] 

\LoadClass[10.5pt]{article}

% 用于自定义标题的 package
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{type1cm}
\RequirePackage{indentfirst}
\RequirePackage{framed}

% 页边距
\geometry{a4paper,left=3.18cm,right=3.18cm,top=2.54cm,bottom=2.54cm}

% 个人信息
\renewcommand{\author}[1]{\def\@author{#1}\renewcommand{\author}[0]{#1}}
\newcommand{\id}[1]{\def\@id{#1}\renewcommand{\id}[0]{#1}}
\newcommand{\email}[1]{\def\@email{#1}\renewcommand{\email}[0]{#1}}
\newcommand{\department}[1]{\def\@department{#1}\renewcommand{\department}[0]{#1}}
\newcommand{\instructor}[1]{\def\@instructor{#1}\renewcommand{\instructor}[0]{#1}}

% 行距 1.5倍
\linespread{1.5}

% 标题样式
\renewcommand*\maketitle{
 \begin{center}
    \begin{spacing}{1.5}
    {\LARGE \textsf \@title \par}
    \vskip 0.5em
    {\large
        \begin{tabular}[t]{c}
    	\kaishu \@author（\@id，\href{mailto:\@email}{\@email}）
        \end{tabular}\par
    }
    \end{spacing}
 \end{center}\par
  \setcounter{footnote}{0}
}

\newcommand{\coverletter}[2][\today]{
    \begin{framed}
    \vspace{3ex}
    
    #2
    
    \vspace{3ex}
    
    \begin{flushright}
    \@author \\
    #1
    \end{flushright}
    
    \end{framed}
}

\newcommand{\xiaosi}{12pt}
\newcommand{\wuhao}{10.5pt}
\newcommand{\xiaowu}{9pt}

\renewcommand\thesection{\zhnum{section}}
\titleformat{\section}{\centering\heiti\zihao{-4}}{\thesection{、}}{0em}{}

\renewcommand\thesubsection{\zhnum{subsection}}
\titleformat{\subsection}{\raggedright\heiti\zihao{-4}}{{\hspace{2em}（}\thesubsection{）}}{0em}{}

\renewcommand \thesubsubsection {\arabic{subsubsection}}
\titleformat{\subsubsection}{\raggedright\heiti\zihao{5}}{{\hspace{2em}}\textsf\thesubsubsection{.\space{}}}{0em}{}

\renewcommand \theparagraph {\arabic{paragraph}}
\titleformat{\paragraph}[hang]{\raggedright\heiti\zihao{5}}{{\hspace{2em}（}\theparagraph{）}}{0em}{}

% 摘要与关键词
\renewcommand{\abstract}[1]{{\songti\zihao{-5} \indent 摘要：#1}}
\newcommand{\keywords}[3]{  {\songti\zihao{-5} \indent 关键词：#1；#2；#3}}
\renewcommand{\keywords}[4]{{\songti\zihao{-5} \indent 关键词：#1；#2；#3；#4}}
\renewcommand{\keywords}[5]{{\songti\zihao{-5} \indent 关键词：#1；#2；#3；#4；#5}}
% 文章关键词数量一般为 3-5 个。如果需要更多关键词，请可以自行添加更多 new command。

\newcommand{\tabletitle}[1]{{{\bfserif #1}}}

\newcommand{\manualindent}{\hspace{2em}}
\newcommand{\tabledesc}[1]{\zihao{-5}\manualindent #1}

\newcommand{\refs}[1]{
\vspace{5ex}
\singlespacing\zihao{-5}
\heiti 参考文献

\songti #1
}
