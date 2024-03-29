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

import std/[random, colors, htmlgen]
from std/strutils import format
include constants

template get_random_handwriting_font*(): string =
  ## Get a random handwriting font name as string. For Titles/SubTitles.
  handwriting_fonts.sample

template get_random_mono_font*(): string =
  ## Get a random monospaced font name as string. Few fonts. For Code.
  mono_fonts.sample

template get_random_display_font*(): string =
  ## Get a random decorative display cosmetic font name as string.For Fun.
  display_fonts.sample

template get_random_sans_font*(): string =
  ## Get a random sans font name as string. These are for serious stuff.
  sans_fonts.sample

template get_random_serif_font*(): string =
  ## Get a random serif font name as string. These are for serious stuff.
  serif_fonts.sample

template get_random_font*(): string =
  ## Get a random font name as string. Any kind of font.
  [get_random_handwriting_font(), get_random_mono_font(), get_random_display_font(), get_random_sans_font(),  get_random_serif_font()].sample

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

  result = (
    name: colo,
    hexa: $hexa,
    rgb: [int16(rgbv.r), int16(rgbv.g), int16(rgbv.b)],
    rgb_percent: [int8(rgbv.r * 100 / 255), int8(rgbv.g * 100 / 255), int8(rgbv.b * 100 / 255)])

template get_random_css_pattern*(): string =
  ## Get a random CSS3 seamless pattern with random pastel colors as string.
  ## For quick but cool HTML styling on modern browsers.
  css_patterns.sample().format(get_random_pastel_color("light").hexa, get_random_pastel_color("dark").hexa)

template A*(arguments: varargs[untyped]) =
  htmlgen.a(arguments, class="button is-text btn btn-link")

template A_autodisable*(arguments: varargs[untyped]) =
  htmlgen.a(arguments, class="button is-text btn btn-link", onclick=autohide_button)

template Article*(arguments: varargs[untyped]) =
  htmlgen.article(arguments, class="message")

template Body*(arguments: varargs[untyped]) =
  htmlgen.body(arguments, class="has-navbar-fixed-top")

template Button*(arguments: varargs[untyped]) =
  htmlgen.button(arguments, class="button is-light is-rounded btn tooltip")

template Button_autodisable*(arguments: varargs[untyped]) =
  htmlgen.button(arguments, class="button is-light is-rounded btn tooltip", onclick=autohide_button)

template Details*(arguments: varargs[untyped]) =
  htmlgen.details(arguments, class="message is-dark")

template Dialog*(arguments: varargs[untyped]) =
  htmlgen.dialog(arguments, class="notification is-rounded modal")

template Footer*(arguments: varargs[untyped]) =
  htmlgen.footer(arguments, class="footer is-fullwidth")

template H1*(arguments: varargs[untyped]) =
  htmlgen.h1(arguments, class="title")

template Img*(arguments: varargs[untyped]) =
  htmlgen.img(arguments, class="image img-responsive")

template Img_effect*(arguments: varargs[untyped]) =
  htmlgen.img(
    arguments, class="image img-responsive", onmouseout="this.style.filter:none",
    onmouseover="this.style.filter:" & efekts.sample)

template Label*(arguments: varargs[untyped]) =
  htmlgen.label(arguments, class="label form-label")

template Meter*(arguments: varargs[untyped]) =
  htmlgen.meter(arguments, class="progress is-small bar-item", role="progressbar")

template Nav*(arguments: varargs[untyped]) =
  htmlgen.nav(arguments, class="navbar is-fixed-top is-light", role="navigation")

template Progress*(arguments: varargs[untyped]) =
  htmlgen.progress(arguments, class="progress is-small bar-item", role="progressbar")

template Section*(arguments: varargs[untyped]) =
  htmlgen.section(arguments, class="section")

template Select*(arguments: varargs[untyped]) =
  htmlgen.select(arguments, class="select is-primary is-rounded is-small form-select")

template Summary*(arguments: varargs[untyped]) =
  htmlgen.summary(arguments, class="message-header is-dark")

template Table*(arguments: varargs[untyped]) =
  htmlgen.table(arguments, class="table is-bordered is-striped is-hoverable table-striped table-hover")

template Textarea*(arguments: varargs[untyped]) =
  htmlgen.textarea(arguments, class="textarea is-primary form-input", autocomplete="autocomplete")

template Figure*(arguments: varargs[untyped]) =
  htmlgen.figure(arguments, class="figure figure-caption text-center")

template Pre*(arguments: varargs[untyped]) =
  htmlgen.pre(arguments, class="code")

template Video*(arguments: varargs[untyped]) =
  htmlgen.video(arguments, class="video-responsive")

template Style_font*() =
  htmlgen.style("body{font-family:'FantasqueSansMono Nerd','Fira Code','Ubuntu','Oxygen' !important}")

template Link_bulma*() =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
                href="https://unpkg.com/bulma/css/bulma.min.css")

template Link_spectre*() =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
                href="https://unpkg.com/spectre.css/dist/spectre.min.css")

template Link_spectre_exp*() =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
                href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css")

template Link_spectre_icons*() =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
                href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css")

template Center*(arguments: varargs[untyped]) =
  htmlgen.center(arguments, class="is-centered")


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
  # HTMLGen wrapped to spit Bulma and Spectre ready HTML.
  echo Link_bulma()
  echo Link_spectre()
  echo Link_spectre_exp()
  echo Link_spectre_icons()
  echo A("a")
  echo A_autodisable("a_autodisable")
  echo Article("article")
  echo Body("body")
  echo Button("button")
  echo Button_autodisable("button_autodisable")
  echo Center("center")
  echo Details("details")
  echo Dialog("dialog")
  echo Footer("footer")
  echo H1("h1")
  echo Img(src="someimage.webp", alt="alt")
  echo Img_effect(src="someimage.webp", alt="alt")
  echo Label("label")
  echo Meter("meter")
  echo Nav("nav")
  echo Progress("progress")
  echo Section("section")
  echo Select("select")
  echo Summary("summary")
  echo Table("table")
  echo Textarea("textarea")
  echo Figure("figure")
  echo Pre("pre")
  echo Video("video")
  echo Style_font()
