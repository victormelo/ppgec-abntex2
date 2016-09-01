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



%%%% alterando a capa %%%%
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    
    \includegraphics[scale=0.3]{imagens/brasao}
    \vspace*{-13mm}
    {\SingleSpacing \large \imprimirinstituicao}

    \vspace*{4cm}

    {\large\imprimirautor}

    \vspace*{4cm}

  %  \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \Huge\imprimirtitulo

	\vfill

    \large\imprimirlocal, \imprimirdata

    \vspace*{1cm}
  \end{capa}
}


%%%% folha de rosto %%%%

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{folhaderosto}
\centering
\includegraphics[scale=0.25]{imagens/brasao}
\vspace*{-13mm}
{\SingleSpacing \large \imprimirinstituicao}

{
\vspace*{3.5cm}
\large\imprimirautor 

\vspace*{1.5cm}

{ \Huge\imprimirtitulo }

\hfill


%    \hspace{.45\textwidth}
%    \begin{minipage}{.5\textwidth}
%        \imprimirpreambulo
%    \end{minipage}%
\imprimirtipotrabalho

\vspace*{1cm}

\hspace{.45\textwidth}
 \begin{minipage}{.5\textwidth}
 \small\imprimirpreambulo
\vspace*{0.3cm}

\begin{flushright}
\normalsize\imprimirorientador \\ [-.1cm]
Orientador

\abntex@ifnotempty{\imprimircoorientador}{%
  \normalsize\imprimircoorientador \\ [-.1cm]
  Coorientador

}

\end{flushright}

\end{minipage}

%\end{flushright}


\vfill

}

\large\imprimirlocal, \imprimirdata

\vspace*{1cm}

\end{folhaderosto}
}


\makeatother
