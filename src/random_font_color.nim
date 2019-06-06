## Get a random font name as string, useful for HTML/CSS styling.
##
## This groups have been tested on HTML/CSS with one each other,
## they look pretty good on all combinations, we are not Designers,
## but this is useful for quick templating and boilerplates styling.
## They are all Open Source from Trending+Popular category on google fonts.
##
## This 2 groups have been tested on HTML/CSS with one each other,
## they look pretty good on all combinations, we are not Designers,
## but this is useful for quick templating and boilerplates styling.
##
## Yes they are Hardcoded because they are all available on Google Fonts and
## standard safe colors, you can not expand those lists of colors and fonts.
##
## Bulma CSS & Spectre CSS Support
## -------------------------------
##
## Compile-Time Templates that wrap HTMLGen to spit **Bulma & Spectre ready HTML**.
## Also 1 button and 1 anchor Template tag that Auto-Disables itself on click.
## We use Bulma & Spectre CSS Frameworks because they are the only CSS Frameworks
## that do **Not use JavaScript** since Nim runs on the frontend makes perfect fit.
## See https://bulma.io & https://picturepan2.github.io/spectre/getting-started.html
##
## .. image:: https://source.unsplash.com/xi9d8YSLNo4/800x402

import random, colors, htmlgen
from strutils import format, toLowerAscii

include constants


type Color = tuple[name: string, hexa: string, rgb: array[0..2, int16],
    rgb_percent: array[0..2, int8]]
when not defined(js): randomize() # Basic NodeJS Support.


proc get_random_handwriting_font*(): string {.inline.} =
  ## Get a random handwriting font name as string. For Titles/SubTitles.
  handwriting_fonts.sample

proc get_random_mono_font*(): string {.inline.} =
  ## Get a random monospaced font name as string. Few fonts. For Code.
  mono_fonts.sample

proc get_random_display_font*(): string {.inline.} =
  ## Get a random decorative display cosmetic font name as string.For Fun.
  display_fonts.sample

proc get_random_sans_font*(): string {.inline.} =
  ## Get a random sans font name as string. These are for serious stuff.
  sans_fonts.sample

proc get_random_serif_font*(): string {.inline.} =
  ## Get a random serif font name as string. These are for serious stuff.
  serif_fonts.sample

proc get_random_font*(): string =
  ## Get a random font name as string. Any kind of font.
  [get_random_handwriting_font(), get_random_mono_font(),
   get_random_display_font(), get_random_sans_font(),
   get_random_serif_font()].sample

proc get_random_pastel_color*(tone: string = ""): tuple =
  ## Get a random dark or light color as string, useful for CSS styling.
  assert tone in ["light", "dark", ""], "Tone must be 'dark' or 'light'."
  var colors_array: seq[string]
  if tone == "light":
    colors_array = light_pastel_colors
  elif tone == "dark":
    colors_array = dark_pastel_colors
  else:
    colors_array = light_pastel_colors & dark_pastel_colors

  let colo = colors_array.sample()
  let hexa = parseColor(colo)
  let rgbv = hexa.extractRGB

  let c: Color = (
     name: colo,
     hexa: toLowerAscii($hexa),
     rgb: [int16(rgbv.r), int16(rgbv.g), int16(rgbv.b)],
     rgb_percent: [int8(rgbv.r * 100 / 255), int8(rgbv.g * 100 / 255), int8(
         rgbv.b * 100 / 255)])
  result = c

proc get_random_css_pattern*(): string =
  ## Get a random CSS3 seamless pattern with random pastel colors as string.
  ## For quick but cool HTML styling on modern browsers.
  css_patterns.sample().format(get_random_pastel_color("light").hexa,
                             get_random_pastel_color("dark").hexa)


#when isMainModule:    # For Testing with NodeJS uncomment this line.
runnableExamples:
  import random, colors
  # Get a Random Font from each Family.
  echo get_random_handwriting_font()
  echo get_random_mono_font()
  echo get_random_display_font()
  echo get_random_sans_font()
  echo get_random_serif_font()
  echo get_random_font()
  echo get_random_pastel_color("dark")
  echo get_random_pastel_color("light")
  echo get_random_pastel_color()
  echo get_random_css_pattern()
  # Get the lists of all Fonts from each Family.
  echo handwriting_fonts
  echo mono_fonts
  echo display_fonts
  echo sans_fonts
  echo serif_fonts
  # Get the lists of all CSS3 Patterns.
  echo css_patterns
