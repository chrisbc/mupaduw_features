
Story:


As a musician I want to be able to select the scale so that my 
contact with the grid are translated to sensible notes.

Note: There is only one vertical row

ref https://trello.com/c/ysU4W2YS

Background:
	Given I have a MIDI synth connected
	And a traditional tuned instrument is loaded (Pianoforte)
	And the synthesizer output is audible

Scenario: The grid has a two octave scale on the horizontal axis
	Given I choose the scale of C major
	When I tap the central cell
	Then a Middle-C note sounds
	When I tap the leftmost cell
	Then a note 1 octave below Middle-C sounds
	When I tap the grids rightmost cells
	Then a note 1 octave above Middle-C sounds


Scenario: Notes are arranged to fit the chosen scale
	Given I choose the scale of C major
	Then any note in the grid will belong to the scale of C major 
	And the notes are ordered from left to right in ascending pitch


