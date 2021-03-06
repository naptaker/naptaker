%%% ===================================== [ instrument-context-definitions.ily ]
%%% Description: Naptaker - Engraving Naptaker scores with GNU LilyPond
%%% Copyright:   (c) 2016-2020 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

\include "context-creating-function.ily"


%%% ==================================================================== [ Vox ]

\newInstrument "Vox"
\with {
  instrumentName = "Vocals"
  %% shortInstrumentName = "V"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \clef F
}
\with {
  \consists "Staff_performer"
  midiInstrument = "voice oohs"
}
"default"


%%% ================================================================= [ Guitar ]

\newInstrument "Guitar"
\with {
  instrumentName = "Guitar"
  %% shortInstrumentName = "G"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \override StringNumber      #'stencil      = ##f
  \clef "treble_8"
}
\with {
  \consists "Staff_performer"
  midiInstrument    = "electric guitar (clean)"
  midiMinimumVolume = #0.3
  midiMaximumVolume = #0.6
}
"default"


%%% =================================================================== [ Bass ]

\newInstrument "Bass"
\with {
  instrumentName = "Bass"
  %% shortInstrumentName = "B"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \override StringNumber      #'stencil      = ##f
  \clef "bass_8"
}
\with {
  \consists "Staff_performer"
  midiInstrument = "electric bass (finger)"
}
"default"


%%% ==================================================================== [ EOF ]
