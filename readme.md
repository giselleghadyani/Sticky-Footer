Sticky Footer
===
Showcases 3 ways to do a **sticky footer**. Each HTML file is the same as the others but the CSS classes are namespaced differently.

Project setup
---
1. Install Node.js
1. Create host file entry for `lol.stickyfooter.com`.
1. In the root of the project run `npm start`.

What is a Sticky Footer?
---
One of the things you'll probably run across in web development is having to put the footer at the bottom of the window even though the height of the content does not fill the window vertically.

If the content extends past the bottom of the window, the footer will be at the end of the page. On the other hand, when you have a small amount of content, the footer will reside just under the content leaving a bunch of whitespace between it and the bottom of the window.

There are a few methods to take care of this, but in most designs, the footer should either be at the bottom of the window, or if the content is longer than the window, then it should be at the bottom of the page.

Methods
---
- Flexbox (CSS)
- Absolute Positioning (CSS)
- jQuery (JS)

---

Flexbox (CSS)
---
### Pros
- Very simple and clean CSS
- Allows for a variable-height footer
- No flash of unstyled content (FoUC)

### Cons
- Doesn't work in IE versions 9 and older
- Requires special flexbox syntax for IE10

Absolute Positioning (CSS)
---
### Pros
- Works in older browsers
- No FoUC

### Cons
- Complex CSS
- Requires a fixed-height footer
- Body requires margin bottom at the same height as the footer so the footer doesn't overlap content
- Body background color needs to match main content background color

jQuery (JS)
---
### Pros
- Works with older browsers
- Doesn't require complex CSS

### Cons
- Complex JS
- Footer position completely depends on HTML structure
- Needs setup for respond to browser resizing and content changes
- Has FoUC
