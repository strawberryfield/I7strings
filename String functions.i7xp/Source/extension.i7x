Version 1 of the String functions by Roberto Ceccarelli begins here.

"A collection of phrases to manage strings."

Chapter Substrings

To decide which text is substring of (T - some text) from (S - a number) taking (E - a number) characters:
	decide on the substring of T from S to S plus E minus one.
			
To decide which text is substring of (T - some text) from (S - a number) to (E - a number):
	let ret be "";
	if  E is greater than the number of characters in T, let E be the the number of characters in T;
	repeat with I running from S to E:
		let ret be "[ret][character number I in T]";
	decide on ret.

To decide which text is substring of (T - some text) from (S - a number) to the/-- end:
	decide on the substring of T from S to the number of characters in T.

To decide which number is position of (S - some text) in (T - some text):
	let ret be 0;
	let M be (the number of characters in T minus the number of characters in S) plus one;
	repeat with I running from 1 to M:
		let X be the substring of T from I taking the number of characters in S characters;
		if S exactly matches the text "[X]":
			let ret be I;
			break;
	decide on ret.

To decide which text is first (N - a number) character/characters of (T - some text):
	decide on the substring of T from one to N.
	
To decide which text is last (N - a number) character/characters of (T - some text):
	let S be the (number of characters in T minus N) plus one;
	unless S is greater than zero, let S be one;
	decide on the substring of T from S to the end.
	
Chapter Trimming

To decide which text is (T - some text) without spaces at the/-- end:
	replace the regular expression "\s*$" in T with "";
	decide on T.

To decide which text is (T - some text) without spaces at the/-- start:
	replace the regular expression "^\s*" in T with "";
	decide on T.

To decide which text is (T - some text) without trailing spaces:
	decide on (T without spaces at the start) without spaces at the end.
		
String functions ends here.

---- DOCUMENTATION ----

This extension provides functions to extract parts of strings, find the position of a string inside another and remove trailing spaces.

Chapter: Substrings

Example: * Operations on substrings.

	*: "Substring function examples"
	
	Include String Functions by Roberto Ceccarelli.
	
	Lab is a room.
	
	The base string is a text that varies. 
	The base string is usually "The quick brown fox jumps over the lazy dog".
	
	When play begins:
		say "The base string is: [fixed letter spacing]<[base string]>[roman type][line break]";
		let the result string be the substring of the base string from 5 taking 5 characters;
		say "The substring  from 5 taking 5 characters is: [fixed letter spacing]<[result string]>[roman type][line break]";
		let the result string be the substring of the base string from 11 to 16;
		say "The substring  from 11 to 16 is: [fixed letter spacing]<[result string]>[roman type][line break]";
		let the position be the position of "fox" in the base string;
		say "The position of 'fox' is: [fixed letter spacing][position][roman type][line break]";
		let the result string be the substring of the base string from 17 to the end;
		say "The substring  from 17 to end is: [fixed letter spacing]<[result string]>[roman type][line break]";
		let the result string be the first 9 characters of the base string;
		say "The first 9 characters are: [fixed letter spacing]<[result string]>[roman type][line break]";	
		let the result string be the last 8 characters of the base string;
		say "The last 8 characters are: [fixed letter spacing]<[result string]>[roman type][line break]".	 	
		
	Test me with "quit".

Chapter: Remove trailing spaces

Three function that are usually called LTRIM(), RTRIM() and ALLTRIM() or simply TRIM()

Example: * Remove trailing spaces.

	*: "Trailing spaces examples"
	
	Include String Functions by Roberto Ceccarelli.
	
	Lab is a room.
	
	The base string is a text that varies. 
	The base string is usually "   A string with spaces     ".
	
	When play begins:
		say "The base string is: [fixed letter spacing]<[base string]>[roman type][line break]";
		let the result string be the base string without spaces at the start;
		say "The string  without spaces at the start is: [fixed letter spacing]<[result string]>[roman type][line break]";
		let the result string be the base string without spaces at the end;
		say "The string  without spaces at the end is: [fixed letter spacing]<[result string]>[roman type][line break]";
		let the result string be the base string without trailing spaces;
		say "The string  without trailing spaces is: [fixed letter spacing]<[result string]>[roman type][line break]".
		 	
	Test me with "quit".



	










