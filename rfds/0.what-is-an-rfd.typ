#let title = [What is an RFD?]
#let author = [Lachlan Kermode]
#let state = [prediscussion]

= What is an RFD?
Our RFD process is inspired by #link("https://rfd.shared.oxide.computer/rfd/0001")[Oxide\'s RFD philosophy], which is in turn inspired by the #link("https://en.wikipedia.org/wiki/Request_for_Comments")[IETF RFC process].
Following Oxide, we too defer to #link("https://datatracker.ietf.org/doc/html/rfc3")[RFC 3] as the best explanation of what kinds of writing ought to go in RFDs:

#quote(block: true)[
  The content of a note may be any thought, suggestion, etc. related to the software or other aspect of the network. 
  Notes are encouraged to be timely rather than polished. 
  Philosophical positions without examples or other specifics, specific suggestions or implementation techniques without introductory or background explication, and explicit questions without any attempted answers are all acceptable.
  The minimum length for a note is one sentence.
]

#quote(block: true)[
  These standards (or lack of them) are stated explicitly for two reasons.
  First, there is a tendency to view a written statement as ipso facto authoritative, and we hope to promote the exchange and discussion of considerably less than authoritative ideas. 
  Second, there is a natural hesitancy to publish something unpolished, and we hope to ease this inhibition.
]

In short, RFDs are the elementary unit of shared conceptual progress of tFLI.

= When to use an RFD
In contrast to Oxide, tFLI is an academic reseach project that does not have an explicit economic obligation to investors or customers.
The following are examples of when an RFD is appropriate, which are intended to be broad:

- A design for testing
- An architectural design for hardware or software
- Change to a system or package
- Change to a tool
- Brainstorm for a new paper or research direction

= RFD metadata and state
At the start of every RFD document, we'd like to include a brief amount
of metadata. We do this with #link("https://typst.app")[Typst] metadata, e.g.:

```typst
#let title = [What is an RFD?]
#let author = [Lachlan Kermode]
#let state = [prediscussion]
```

Every RFD must have:

+ `title`: which should also follow the kebab-case format in the name of
  the file for the RFD.
+ `author`: which can include multiple authors separated by commas.
+ `state`: which is discussed in the rest of this section.

An RFD can be in one of the following six states:

- `prediscussion`
- `ideation`
- `discussion`
- `published`
- `committed`
- `abandoned`

As per the example above, the state of the RFD is specified as Typst variables at the top of the rfd document (which is also written in Typst).

== `prediscussion`
A document in the `prediscussion` state indicates that the work is not yet ready for discussion, but that the RFD is effectively a placeholder.
The `prediscussion` state signifies that work iterations are being done quickly on the RFD in its branch in order to advance the RFD to the discussion state.

== `ideation`
A document in the `ideation` state contains only a description of the topic that the RFD will cover, providing an indication of the scope of the eventual RFD. 
Unlike the `prediscussion` state, there is no expectation that it is undergoing active revision.
Such a document can be viewed as a scratchpad for related ideas. 
Any member of the team is encouraged to start active development of such an RFD (moving it to the `prediscussion` state) with or without the participation of the original author.
It is critical that RFDs in the `ideation` state are clear and narrowly defined.

== `discussion`
Documents under active discussion should be in the `discussion` state.
At this point a discussion is being had for the RFD in a Pull Request.

== `published`
Once (or if) discussion has converged and the Pull Request is ready to be merged, it should be updated to the `published` state before merge.
Note that just because something is in the `published` state does not mean that it cannot be updated and corrected. 
Changes to an RFD can be submitted as a PR to this repository.

The `prediscussion` state should be viewed as essentially a collaborative extension of an researcher\'s notebook, and the `discussion` state should be used when an idea is being actively discussed. 
These states shouldn't be used for ideas that have been committed to, organizationally or otherwise; by the time an idea represents the consensus or direction, it should be in the `published` state.

== `committed`
Once an idea has been entirely implemented, it should be in the `committed` state.
Comments on ideas in the `committed` state should generally be raised as issues-- but if the comment represents a call for a significant divergence from or extension to committed functionality, a new RFD may be called for. As in all things, use your best judgment.

== `abandoned`
Finally, if an idea is found to be non-viable (that is, deliberately never implemented) or if an RFD should be otherwise indicated that it should be ignored, it can be moved into the `abandoned` state.
