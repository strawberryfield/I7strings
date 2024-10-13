String functions by Roberto Ceccarelli begins here.

"A collection of phrases to mangage strings."

Chapter Substrings

To decide which text is substring of (T - some text) from (S - a number) taking (E - a number) characters:
	decide on the substring of T from S to S plus E minus one.
			
To decide which text is substring of (T - some text) from (S - a number) to (E - a number):
	let ret be "";
	if  E is greater than the number of characters in T, let E be the the number of characters in T;
	repeat with I running from S to E:
		let ret be "[ret][character number I in T]";
	decide on ret.

To decide which text is substring of (T - some text) from (S - a number) to end:
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

Chapter Trimming

To decide which text is (T - some text) without spaces at end:
	replace the regular expression "\s*$" in T with "";
	decide on T.

To decide which text is (T - some text) without spaces at start:
	replace the regular expression "^\s*" in T with "";
	decide on T.
	
String functions ends here.

---- DOCUMENTATION ----
