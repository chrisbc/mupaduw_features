
Story:

As a musician 

I want to be able to select the scale 

so that my touches will sound notes belonging to that scale.

Note: There is only one vertical row in the grid

ref https://trello.com/c/ysU4W2YS

Background:
	Given I have a MIDI synth connected
	And a traditional tuned instrument is loaded (Pianoforte)
	And the synthesizer output is audible

Scenario Outline: a scale is described using intervals 
	Given a scale of <scale_type>
	And the root note C
	then the semitone intervals are <intervals>
	and the notes of the scale are <note_names>
	
	Examples:
	| scale | intervals 	| note_names	 | comment	|
	| major	|2,2,1,2,2,2,1 	| C,D,E,F,G,A,B  | the interval betweeen C and D is 2 semitones, etc |
	| minor |2,1,2,2,2,1,2	| C,D,Eb,F,G,Ab,Bb | |	


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


