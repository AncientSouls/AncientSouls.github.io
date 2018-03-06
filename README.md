# Ancient Souls

### About urgent trends
Standards, protocols and libraries are usually implemented for a specific task, taking into account the minimum required capacity in strict dependence on the situation. Because of this, the expansion and flexible application of such solutions is very expensive or impossible.

#### Reason.

If you perceive any business or project as a tree, then today usually first come up with the leaves of the project, and under them try to grow branches to the ground. This leads to the fact that if the leaves need more to do almost the full path from the top down or create crutches in the architecture.

#### Solution

Grow roots. To the extent possible, if we can add an exclusively decorative (layout, final logic, content, adapters) code to get the final product, create it. Do not create projects where basic logic will require more than 10% additional code. The process of creating root, fundamental capabilities, potential opportunities must be based on the algorithm for finding duplicate potentials, and not from the need to create any final product.

We conduct research and identify the most repetitive conceptual patterns in different modules used in one application, we study the reasons why these concepts are duplicated. We create a flexible modular implementation allowing with minimal additions to get from it the same effect with much more flexibility.

We believe that having such opportunities, we can start and create, potentially, at least 250% more end products.

### Our mission
Creating modules with the widest possible application potential.

- If subscribing to changes, then without dependence on the method, protocol or data structure, with the ability to determine these factors is absolutely free.
- If it is the communication system, it should be independent from content type, free in way of synchronisation and it should be able to use any communication protocol, using same program interface in any case.
- If the mounting concept, then fully reactively, without dependence to language, source type or execution platform.
- It should not contain built-in, non-replaceable functionality. Completely disassemblable and re-assemblable on prodaction usage.

### Comparison
Existing systems vs possible assemblies based on our abstractions.

- meteor.js subscribe/publish = [Peer](https://github.com/AncientSouls/Peer)+[Channels](https://github.com/AncientSouls/Channels)+[Cursor](https://github.com/AncientSouls/Cursor) (80%) + adapters (20%)
- webpack = [Funicular](https://github.com/AncientSouls/Funicular)+[Cursor](https://github.com/AncientSouls/Cursor) (80%) + adapters (20%)
- react = [Funicular](https://github.com/AncientSouls/Funicular)+[Cursor](https://github.com/AncientSouls/Cursor) (50%) + dom/string generator
- meteor.js minimongo = [Cursor](https://github.com/AncientSouls/Cursor) + mingo
- meteor.js methods = [Peer](https://github.com/AncientSouls/Peer)+[Channels](https://github.com/AncientSouls/Channels)+[Cursor](https://github.com/AncientSouls/Cursor) (95%)

### We invite you!

We are looking for those who share our values, and those who can reasonably criticize and challenge them. If you are one of these people, please write us an issue and post with any thoughts, questions and ideas.