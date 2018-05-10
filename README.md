# nim-random-font-color

Random curated Fonts and pastel Colors for your UI/UX design,
design for non-designers, poors man design. Nim package.

![screenshot](https://source.unsplash.com/xi9d8YSLNo4/800x402 "Illustrative Photo by https://unsplash.com/@rawpixel")


# Use

```nim
>>> import random_font_color
>>> echo get_random_handwriting_font()
"Redressed"
>>> echo get_random_mono_font()
"Inconsolata"
>>> echo get_random_display_font()
"McLaren"
>>> echo get_random_sans_font()
"Lato"
>>> echo get_random_serif_font()
"Rasa"
>>> echo get_random_font()
"Yellowtail"
>>> echo get_random_pastel_color("dark")
(name: "darkgray", hexa: "#a9a9a9", rgb: [169, 169, 169], rgb_percent: [66, 66, 66])
>>> echo get_random_pastel_color("light")
(name: "lavenderblush", hexa: "#fff0f5", rgb: [255, 240, 245], rgb_percent: [100, 94, 96])
>>> echo get_random_pastel_color()
(name: "chocolate", hexa: "#d2691e", rgb: [210, 105, 30], rgb_percent: [82, 41, 11])
echo get_random_css_pattern()
background:
  linear-gradient(transparent,transparent 10px,#fff 10px, gray 14px,#fff 15px,rgba(0, 0, 0, 0) 14px,rgba(0, 0, 0, 0)),
  linear-gradient(135deg,transparent,transparent 12px,#fff 12px,#000 15px, transparent 15px,transparent),
  radial-gradient(10px 10px,circle,#FFF 7px,transparent 9px);
background-size: 35px 30px,4px 30px,20px 30px;
background-position: 0px 8px,31px 35px,25px 10px;
background-color: #87cefa;
background-repeat: repeat-y;

>>>
```


# Install

```
nimble install random_font_color
```


# Requisites

- [Nim](https://nim-lang.org)


# Documentation

<details>
    <summary><b>get_random_pastel_color()</b></summary>

**Description:**
Get a random dark or light color as string, useful for CSS styling..
The proc does not accept `char` only `string`.

**Arguments:**
- `tone` A one of `"dark"` or `"light"`,
dark for dark colors and light for light colors, `string` type, optional.

**Returns:** `tuple` type.

- **All other `proc` cant take any arguments at all, just use them directly.**

</details>


<details>
    <summary><b>get_random_css_pattern()</b></summary>

**Description:**
Get a random seamless CSS3 pattern with pastel colors as string. For quick HTML styling.
This patterns have been tested on HTML/CSS with one each other,
they look pretty good on all combinations, we are not Designers,
but this is useful for quick templating and boilerplates styling.
From lea.verou.me/css3patterns and bennettfeely.com/gradients and my own.

**Arguments:** None.

**Returns:** 1 random seamless CSS3 pattern with pastel colors, `string` type.

</details>


# Why?

- [Whats this useful for???, heres an example of a presentation auto-styled with this.](http://htmlpreview.github.io/?https://github.com/juancarlospaco/microraptor/blob/master/test-presentation.html)
