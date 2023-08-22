%%% ============================================================ [ package.ily ]
%%% Description: Naptaker - Engraving Naptaker scores with GNU LilyPond
%%% Copyright:   (c) 2016-2023 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.0"

\include "oll-core/package.ily"

\registerOption naptaker.extra-layout { }

\registerOption naptaker.guitar-capo #3
\registerOption naptaker.guitar-tabs ##f
\registerOption naptaker.guitar-tuning #guitar-open-d-tuning

\registerOption naptaker.paper-orientation #'landscape
\registerOption naptaker.paper-size #"letter"

\registerOption naptaker.staff-size #14

#(oll:log "Initialized Naptaker ~a" "")

\include "preamble.ily"
\include "instrument-context-definitions.ily"

\loadPackage gridly

\include "__main__.ily"


%%% ==================================================================== [ EOF ]
