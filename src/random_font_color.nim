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

import random, colors, strutils, htmlgen
include constants

type Color = tuple[name: string, hexa: string, rgb: array[0..2, int16],
    rgb_percent: array[0..2, int8]]
when not defined(js): randomize() # Basic NodeJS Support.


proc get_random_handwriting_font*(): string {.inline.} =
  ## Get a random handwriting font name as string. For Titles/SubTitles.
  handwriting_fonts.rand

proc get_random_mono_font*(): string {.inline.} =
  ## Get a random monospaced font name as string. Few fonts. For Code.
  mono_fonts.rand

proc get_random_display_font*(): string {.inline.} =
  ## Get a random decorative display cosmetic font name as string.For Fun.
  display_fonts.rand

proc get_random_sans_font*(): string {.inline.} =
  ## Get a random sans font name as string. These are for serious stuff.
  sans_fonts.rand

proc get_random_serif_font*(): string {.inline.} =
  ## Get a random serif font name as string. These are for serious stuff.
  serif_fonts.rand

proc get_random_font*(): string =
  ## Get a random font name as string. Any kind of font.
  [get_random_handwriting_font(), get_random_mono_font(),
   get_random_display_font(), get_random_sans_font(),
   get_random_serif_font()].rand

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

  let colo = colors_array.rand()
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
  css_patterns.rand().format(get_random_pastel_color("light").hexa,
                             get_random_pastel_color("dark").hexa)

template a*(arguments: varargs[untyped]): untyped =
  htmlgen.a(arguments, class="button is-text btn btn-link")

template a_autodisable*(arguments: varargs[untyped]): untyped =
  htmlgen.a(arguments, class="button is-text btn btn-link", onclick=autohide_button)

template article*(arguments: varargs[untyped]): untyped =
  htmlgen.article(arguments, class="message")

template body*(arguments: varargs[untyped]): untyped =
  htmlgen.body(arguments, class="has-navbar-fixed-top")

template button*(arguments: varargs[untyped]): untyped =
  htmlgen.button(arguments, class="button is-light is-rounded btn tooltip")

template button_autodisable*(arguments: varargs[untyped]): untyped =
  htmlgen.button(arguments, class="button is-light is-rounded btn tooltip", onclick=autohide_button)

template center*(arguments: varargs[untyped]): untyped =
  htmlgen.center(arguments, class="is-centered")

template details*(arguments: varargs[untyped]): untyped =
  htmlgen.details(arguments, class="message is-dark")

template dialog*(arguments: varargs[untyped]): untyped =
  htmlgen.dialog(arguments, class="notification is-rounded modal")

template footer*(arguments: varargs[untyped]): untyped =
  htmlgen.footer(arguments, class="footer is-fullwidth")

template h1*(arguments: varargs[untyped]): untyped =
  htmlgen.h1(arguments, class="title")

template img*(arguments: varargs[untyped]): untyped =
  htmlgen.img(arguments, class="image img-responsive")

template img_effect*(arguments: varargs[untyped]): untyped =
  htmlgen.img(
    arguments, class="image img-responsive", onmouseout="this.style.filter:none",
    onmouseover="this.style.filter:" & efekts.rand)

template label*(arguments: varargs[untyped]): untyped =
  htmlgen.label(arguments, class="label form-label")

template meter*(arguments: varargs[untyped]): untyped =
  htmlgen.meter(arguments, class="progress is-small bar-item", role="progressbar")

template nav*(arguments: varargs[untyped]): untyped =
  htmlgen.nav(arguments, class="navbar is-fixed-top is-light", role="navigation")

template progress*(arguments: varargs[untyped]): untyped =
  htmlgen.progress(arguments, class="progress is-small bar-item", role="progressbar")

template section*(arguments: varargs[untyped]): untyped =
  htmlgen.section(arguments, class="section")

template select*(arguments: varargs[untyped]): untyped =
  htmlgen.select(arguments, class="select is-primary is-rounded is-small form-select")

template summary*(arguments: varargs[untyped]): untyped =
  htmlgen.summary(arguments, class="message-header is-dark")

template table*(arguments: varargs[untyped]): untyped =
  htmlgen.table(arguments, class="table is-bordered is-striped is-hoverable table-striped table-hover")

template textarea*(arguments: varargs[untyped]): untyped =
  htmlgen.textarea(arguments, class="textarea is-primary form-input", autocomplete="autocomplete")

template figure*(arguments: varargs[untyped]): untyped =
  htmlgen.figure(arguments, class="figure figure-caption text-center")

template pre*(arguments: varargs[untyped]): untyped =
  htmlgen.pre(arguments, class="code")

template video*(arguments: varargs[untyped]): untyped =
  htmlgen.video(arguments, class="video-responsive")

template style_font*(): untyped =
  htmlgen.style("body{font-family:'FantasqueSansMono Nerd','Fira Code','Ubuntu','Oxygen' !important}")

template link_bulma*(): untyped =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
               href="https://unpkg.com/bulma/css/bulma.min.css")

template link_spectre*(): untyped =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
               href="https://unpkg.com/spectre.css/dist/spectre.min.css")

template link_spectre_exp*(): untyped =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
               href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css")

template link_spectre_icons*(): untyped =
  htmlgen.link(crossorigin="anonymous", rel="stylesheet", hreflang="EN",
               href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css")


#when isMainModule:    # For Testing with NodeJS uncomment this line.
runnableExamples:
  import random, colors, strutils
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
  echo link_bulma()
  echo link_spectre()
  echo link_spectre_exp()
  echo link_spectre_icons()
  echo a("a")
  echo a_autodisable("a_autodisable")
  echo article("article")
  echo body("body")
  echo button("button")
  echo button_autodisable("button_autodisable")
  echo center("center")
  echo details("details")
  echo dialog("dialog")
  echo footer("footer")
  echo h1("h1")
  echo img(src="someimage.webp", alt="alt")
  echo img_effect(src="someimage.webp", alt="alt")
  echo label("label")
  echo meter("meter")
  echo nav("nav")
  echo progress("progress")
  echo section("section")
  echo select("select")
  echo summary("summary")
  echo table("table")
  echo textarea("textarea")
  echo figure("figure")
  echo pre("pre")
  echo video("video")
  echo style_font()
