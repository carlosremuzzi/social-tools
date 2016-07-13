.. header::

    .

.. footer::

    |page|

.. |0copy| unicode:: 0xA9 .. copyright sign
   :ltrim:

.. |date| date::
.. |time| date:: %H:%M

.. |page| raw:: latex

   \thepage

.. |lineaEnBlanco| raw:: latex

    \vspace{1em}

.. |ConfFondo| raw:: latex

    \ULCornerWallPaper{1}{Imágenes/fondo.tex}

.. |NumeraciónEnRomanos| raw:: latex

  \pagenumbering{Roman}

.. |NumeraciónEnArabigos| raw:: latex

  \pagenumbering{arabic}

.. |nuevaPagina| raw:: latex

  \newpage

.. |nuevaPaginaLimpia| raw:: latex

  \clearpage

.. |InicioTodoDerecha| raw:: latex

  \begin{flushright}

.. |FinTodoDerecha| raw:: latex

    \end{flushright}

.. |SaltoLinea| raw:: latex

  \\

.. |PaginaImpar| raw:: latex

  \cleardoublepage

.. |LaTeX| raw:: latex

  \LaTeX

.. |ListaDeFiguras| raw:: latex

  \listoffigures

.. |ListaDeTablas| raw:: latex

  \listoftables

.. |InicioFigura| raw:: latex

  \begin{figure}[h]

.. |Centrar| raw:: latex

  \centering

.. |ImagenTEX| raw:: latex

  \input{

.. |Descripción| raw:: latex

  \caption{

.. |Etiqueta| raw:: latex

  \label{

.. |Cierra| raw:: latex

   }

.. |FinFigura| raw:: latex

  \end{figure}

.. |ImprimirBibliografía| raw:: latex

  \bibliography{Bibliografía}

.. role:: sinnumeracion

.. raw:: latex

  \providecommand*\DUrolesinnumeracion[1]{\addcontentsline{toc}{section}{#1}
  \section*{#1}}

.. role:: cite

.. raw:: latex

   \providecommand*\DUrolecite[1]{\citet{#1}}

.. role:: imagentex

.. raw:: latex

  \providecommand*\DUroleimagentex[1]{\begin{figure}[h]\centering\input{#1}
  \caption{#1}\label{#1}\end{figure}}
