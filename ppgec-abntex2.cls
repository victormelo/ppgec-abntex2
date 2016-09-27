%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a UFRGS
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is SEU_NOME, SEU_EMAIL
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ppgec-abntex2}[01/09/2016/ v1.0 Modelo do PPGEC-UPE baseado no abnTeX2]

%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FONTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\bfseries}

% Estilo de capítulo sem ser o do abntex
\chapterstyle{default}

% Faz com que as notas de rodapé parem de resetar após novos capítulos
\counterwithout{footnote}{chapter}	

% Redefinição de nome de elementos pré-textuais

\renewcommand{\listadesiglasname}{Tabela de S\'imbolos e Siglas}
\addto\captionsbrazil{% portugues-brasil
  %% ajusta nomes padroes do babel
  \renewcommand{\bibname}{Refer\^encias}
  \renewcommand{\indexname}{Sum\'ario}
  \renewcommand{\listfigurename}{\'{I}ndice de Figuras}
  \renewcommand{\listtablename}{\'{I}ndice de Tabelas}
  %% ajusta nomes usados com a macro \autoref
  \renewcommand{\pageautorefname}{p\'agina}
  \renewcommand{\sectionautorefname}{se{\c c}\~ao}
  \renewcommand{\subsectionautorefname}{subse{\c c}\~ao}
  \renewcommand{\subsubsectionautorefname}{subse{\c c}\~ao}
  \renewcommand{\paragraphautorefname}{subse{\c c}\~ao}
}


%%%% alterando a capa %%%%
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
	\vspace*{-1cm}
    \includegraphics[scale=0.3]{imagens/brasao}
    \vspace*{-13mm}
    {\SingleSpacing \large \imprimirinstituicao}

    \vspace*{3.8cm}

    {\large\imprimirautor}

    \vspace*{2.8cm}

  %  \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \begin{SingleSpace} \Huge\imprimirtitulo \end{SingleSpace}
    \vspace*{3.3cm}
    
    \normalsize\imprimirtipotrabalho
    
	\vfill

    \normalsize\imprimirlocal, \imprimirdata

    \vspace*{2.8cm}
  \end{capa}
}


%%%% folha de rosto %%%%

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{folhaderosto}
\centering
\vspace*{-1cm}
\includegraphics[scale=0.23]{imagens/brasao}
\vspace*{-13mm}
{\SingleSpacing \large \imprimirinstituicao}

{
\vspace*{3.1cm}
\large\imprimirautor

\vspace*{1.2cm}

\begin{SingleSpace} \Huge\imprimirtitulo \end{SingleSpace}

\hfill


%    \hspace{.45\textwidth}
%    \begin{minipage}{.5\textwidth}
%        \imprimirpreambulo
%    \end{minipage}%
\imprimirtipotrabalho

\vspace*{0.5cm}

\hspace{.45\textwidth}
 \begin{minipage}{.5\textwidth}
 \SingleSpacing\small\imprimirpreambulo

\vspace*{-0.5cm}
\begin{flushright}
\SingleSpacing
\normalsize\imprimirorientador \\ 
Orientador

\abntex@ifnotempty{\imprimircoorientador}{%
  \normalsize\imprimircoorientador \\
  Coorientador

}

\end{flushright}

\end{minipage}

%\end{flushright}


\vfill

}

\normalsize\imprimirlocal, \imprimirdata

\vspace*{2.2cm}

\end{folhaderosto}
}


\makeatother
