# Neomutt howto

## Pattern Modifiers

  | Pattern modifier   | Notes  | Description                                      |
  |--------------------|--------|--------------------------------------------------|
  | ~A                 |        | all messages                                     |
  |--------------------|--------|--------------------------------------------------| 
  | ~b EXPR            | d)     | messages which contain EXPR in the message body  |
  |--------------------|--------|--------------------------------------------------|
  | =b STRING          |        | If IMAP is enabled, like ~b but searches for     |
  |                    |        | STRING on the server, rather than downloading    |
  |                    |        | each message and searching it locally            |
  |--------------------|--------|--------------------------------------------------|
  | ~B EXPR            | d)     | messages which contain EXPR in the whole message |
  |--------------------|--------|--------------------------------------------------|
  | =B STRING          |        | If IMAP is enabled, like ~B but searches for     |
  |                    |        | STRING on the server, rather than downloading    |
  |                    |        | each message and searching it locally.           |
  |--------------------|--------|--------------------------------------------------|
  | ~c EXPR            |        | messages carbon-copied to EXPR                   |
  |--------------------|--------|--------------------------------------------------|
  | %c GROUP           |        | messages carbon-copied to any member of GROUP    |
  |--------------------|--------|--------------------------------------------------|
  | ~C EXPR            |        | messages either to:, cc: or bcc: EXPR            |
  |--------------------|--------|--------------------------------------------------|
  | %C GROUP           |        | messages either to:, cc: or bcc: to any member   |
  |                    |        | of GROUP                                         |
  |--------------------|--------|--------------------------------------------------|
  | ~d [ MIN ]-[ MAX ] |     	| messages with “date-sent” in a Date range        |
  |--------------------|--------|--------------------------------------------------|
  | ~D                 |        | deleted messages                                 |
  |--------------------|--------|--------------------------------------------------|
  | ~e EXPR            |        | messages which contains EXPR in the “Sender”     |
  |                    |        | field                                            |
  |--------------------|--------|--------------------------------------------------|
  | %e GROUP           |        | messages which contain a member of GROUP in the  |
  |                    |        | “Sender” field                                   |
  |--------------------|--------|--------------------------------------------------|
  | ~E                 |        | expired messages                                 |
  |--------------------|--------|--------------------------------------------------|
  | ~F                 |        | flagged messages                                 |
  |--------------------|--------|--------------------------------------------------|
  | ~f EXPR            |        | messages originating from EXPR                   |
  |--------------------|--------|--------------------------------------------------|
  | %f GROUP           |        | messages originating from any member of GROUP    |
  |--------------------|--------|--------------------------------------------------|
  | ~g                 |        | cryptographically signed messages                |
  |--------------------|--------|--------------------------------------------------|
  | ~G                 |        | cryptographically encrypted messages             |
  |--------------------|--------|--------------------------------------------------|
  | ~h EXPR            | d)     | messages which contain EXPR in the message header|
  |--------------------|--------|--------------------------------------------------|
  | =h STRING          |        | If IMAP is enabled, like ~h but searches for     |
  |                    |        | STRING on the server, rather than downloading    |
  |                    |        | each message and searching it locally; STRING    |
  |                    |        | must be of the form “header: substring”          |
  |                    |        | (see below).                                     |
  |--------------------|--------|--------------------------------------------------|
  | ~H EXPR            |        | messages with a spam attribute matching EXPR     |
  |--------------------|--------|--------------------------------------------------|
  | ~i EXPR            |        | messages which match EXPR in the “Message-ID”    |
  |                    |        | field                                            |
  |--------------------|--------|--------------------------------------------------|
  | ~I QUERY           |        | messages whose “Message-ID” field is included in |
  |                    |        | the results returned from an external search     |
  |                    |        | program, when the program is run with QUERY as   |
  |                    |        | its argument. This is explained in greater       |
  |                    |        | detail in the variable reference entry Section   |
  |                    |        | 3.126, “external_search_command”,                |
  |--------------------|--------|--------------------------------------------------|
  | ~k                 |        | messages which contain PGP key material          |
  |--------------------|--------|--------------------------------------------------|
  | ~K EXPR            |        | messages blind carbon-copied to EXPR             |
  |--------------------|--------|--------------------------------------------------|
  | ~L EXPR            |        | messages either originated or received by EXPR   |
  |--------------------|--------|--------------------------------------------------|
  | %L GROUP           |        | message either originated or received by any     |
  |                    |        | member of GROUP                                  |
  |--------------------|--------|--------------------------------------------------|
  | ~l                 |        | messages addressed to a known mailing list       |
  |--------------------|--------|--------------------------------------------------|
  | ~m [ MIN ]-[ MAX ] | c)     | messages with numbers in the range MIN to MAX    |
  |--------------------|--------|--------------------------------------------------|
  | ~m <[ MAX ]        | c)     | messages with numbers less than MAX              |
  |--------------------|--------|--------------------------------------------------|
  | ~m >[ MIN ]        | c)     | messages with numbers greater than MIN           |
  |--------------------|--------|--------------------------------------------------|
  | ~m [ M ]           | c)     | just message number M                            |
  |--------------------|--------|--------------------------------------------------|
  | ~m [ MIN ],[ MAX ] | c)     | messages with offsets (from selected message) in |
  |                    |        | the range MIN to MAX                             |
  |--------------------|--------|--------------------------------------------------|
  | ~M EXPR            | d)     | messages which contain a mime Content-Type       |
  |                    |        | matching EXPR                                    |
  |--------------------|--------|--------------------------------------------------|
  | ~n [ MIN ]-[ MAX ] | a)     | messages with a score in the range MIN to MAX    |
  |--------------------|--------|--------------------------------------------------|
  | ~N                 |        | new messages                                     |
  |--------------------|--------|--------------------------------------------------|
  | ~O                 |        | old messages                                     |
  |--------------------|--------|--------------------------------------------------|
  | ~p                 |        | messages addressed to you (consults $from,       |
  |                    |        | alternates , and local account/hostname information)|
  |--------------------|--------|--------------------------------------------------|
  | ~P                 |        | messages from you (consults $from, alternates ,  |
  |                    |        | and local account/hostname information)          |
  |--------------------|--------|--------------------------------------------------|
  | ~Q                 |        | messages which have been replied to              |
  |--------------------|--------|--------------------------------------------------|
  | ~r [ MIN ]-[ MAX ] |        | messages with “date-received” in a Date range    |
  |--------------------|--------|--------------------------------------------------|
  | ~R                 |        | read messages                                    |
  |--------------------|--------|--------------------------------------------------|
  | ~s EXPR            |        | messages having EXPR in the “Subject” field.     |
  |--------------------|--------|--------------------------------------------------|
  | ~S                 |        | superseded messages                              |
  |--------------------|--------|--------------------------------------------------|
  | ~t EXPR            |        | messages addressed to EXPR                       |
  |--------------------|--------|--------------------------------------------------|
  | ~T                 |        | tagged messages                                  |
  |--------------------|--------|--------------------------------------------------|
  | ~u                 |        | messages addressed to a subscribed mailing list  |
  |--------------------|--------|--------------------------------------------------|
  | ~U                 |        | unread messages                                  |
  |--------------------|--------|--------------------------------------------------|
  | ~v                 |        | messages part of a collapsed thread.             |
  |--------------------|--------|--------------------------------------------------|
  | ~V                 |        | cryptographically verified messages              |
  |--------------------|--------|--------------------------------------------------|
  | ~w EXPR            |        | newsgroups matching EXPR                         |
  |--------------------|--------|--------------------------------------------------|
  | ~x EXPR            |        | messages which contain EXPR in the “References”  |
  |                    |        | or “In-Reply-To” field                           |
  |--------------------|--------|--------------------------------------------------|
  | ~X [ MIN ]-[ MAX ] | a), d) | messages with MIN to MAX attachments             |
  |--------------------|--------|--------------------------------------------------|
  | ~y EXPR            |        | messages which contain EXPR in their keywords    |
  |--------------------|--------|--------------------------------------------------|
  | ~Y EXPR            |        | messages whose tags match EXPR                   |
  |--------------------|--------|--------------------------------------------------|
  | ~z [ MIN ]-[ MAX ] | a), b) | messages with a size in the range MIN to MAX     |
  |--------------------|--------|--------------------------------------------------|
  | =/ STRING          |        | IMAP custom server-side search for STRING .      |
  |                    |        | Currently only defined for Gmail. See: Gmail     |
  |                    |        | Patterns                                         |
  |--------------------|--------|--------------------------------------------------|
  | ~=                 |        | duplicated messages (see $duplicate_threads)     |
  |--------------------|--------|--------------------------------------------------|
  | ~#                 |        | broken threads (see $strict_threads)             |
  |--------------------|--------|--------------------------------------------------|
  | ~$                 |        | unreferenced messages (requires threaded view)   |
  |--------------------|--------|--------------------------------------------------|
  | ~( PATTERN )       |        | messages in threads containing messages matching |
  |                    |        | PATTERN , e.g. all threads containing messages   |
  |                    |        | from you: ~(~P)                                  |
  |--------------------|--------|--------------------------------------------------|
  | ~<( PATTERN )      |        | messages whose immediate parent matches PATTERN, |
  |                    |        | e.g. replies to your messages: ~<(~P)            |
  |--------------------|--------|--------------------------------------------------|
  | ~>( PATTERN )      |        | messages having an immediate child matching      |
  |                    |        | PATTERN , e.g. messages you replied to: ~>(~P)   |
  |--------------------|--------|--------------------------------------------------|

## Working with multiple mails

To apply an action to multiple mails, first tag the mails.
```Shift-t```
on the promt enter:
- . for all mails
- or any of the above patterns

```;```
and the appropriate action. 
ex.
- D to delete
- S to save
- w to change labels
