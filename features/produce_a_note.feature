Story:

As a musician I want to touch the sound area (the grid) so that I can create sounds
using MIDI

Touching the grid will produce
  - a midi note-on signal (middle-C) at the initial touch
  - a midi note-ff signal when I lift my finger
  - a visual indication of the touch

  https://trello.com/c/e7RvdsYg

Background:
	Given I have a MIDI synth connected
	And a traditional tuned instrument is loaded (Pianoforte)
	And the synthesizer output is audible

Scenario: the grid responds to a single user touch
	When I the touch grid area with one finger 
	Then a Middle-C note sounds
	And the surface of the grid lights up

Scenario: a note finishes when the users touch stops
	Given a note is sounded with a user touch
	When I remove the touching finger the note stops
	And the surface of the grid dims




