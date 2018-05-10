#!/usr/bin/nim c -r

import random
import colors
import strutils

include css_patterns


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


type Color = tuple[name: string, hexa: string, rgb: array, rgb_percent: array]
randomize()


proc get_random_handwriting_font*(): string =
  ## Get a random handwriting font name as string. For Titles/SubTitles.
  @["Molle", "Pacifico", "Yellowtail", "Dekko", "Courgette", "Satisfy",
    "Cookie", "Handlee", "Sacramento", "Tangerine", "Damion", "Kalam",
    "Neucha", "Calligraffitti", "Rancho", "Allura", "Niconne", "Rochester",
    "Parisienne", "Merienda", "Caveat", "Tillana", "Italianno", "Sofia",
    "Arizonia", "Montez", "Sriracha", "Delius", "Qwigley", "Itim", "Julee",
    "Quintessential", "Fondamento", "Ruthie", "Condiment", "Amita",
    "Yesteryear", "Aladin", "Norican", "Engagement", "Stalemate", "Meddon",
    "Vibur", "Bilbo", "Redressed", "Devonshire", "Kavivanar", "Kristi"].rand()


proc get_random_mono_font*(): string =
  ## Get a random monospaced font name as string. Few fonts. For Code.
  @["Inconsolata", "Cousine", "Roboto Mono", "Source Code Pro",
    "Droid Sans Mono", "Space Mono", "PT Mono", "Ubuntu Mono", "Nova Mono",
    "Share Tech Mono", "Anonymous Pro", "Oxygen Mono", "Cutive Mono",
    "Fira Mono"].rand()


proc get_random_display_font*(): string =
  ## Get a random decorative display cosmetic font name as string.For Fun.
  @["Mirza", "Lobster", "Buda", "Comfortaa", "Righteous", "Chewy", "Allan",
    "Audiowide", "Boogaloo", "Playball", "Bangers", "Bevan", "Shrikhand",
    "Coda", "Share", "Overlock", "Arbutus", "Limelight", "Pompiere",
    "Monoton", "Graduate", "Lalezar", "Farsan", "Bungee", "Rakkas", "Atma",
    "Mogra", "Slackey", "Forum", "Kavoon", "Fruktur", "Gruppo", "Baumans",
    "Unkempt", "Corben", "Crushed", "Kranky", "Skranji", "Oregano", "Sail",
    "Knewave", "Sniglet", "Shojumaru", "Voces", "Revalia", "Megrim",
    "Lemonada", "Lemon", "Coiny", "Baloo", "Frijole", "Salsa", "Simonetta",
    "Wallpoet", "McLaren", "Amarante", "Iceland", "Chonburi", "Dynalight",
    "Galada", "Metamorphous", "Ribeye", "Milonga", "Flamenco", "Elsie",
    "Chicle", "Paprika", "Piedra", "Akronim", "Iceberg", "Oldenburg",
    "Offside", "Galindo", "Wellfleet", "Sarina", "MedievalSharp", "Chango",
    "Peralta", "Miniver", "Trochut", "Lancelot", "Risque", "Gorditas",
    "Kenia", "Margarine", "Underdog", "Smythe", "Ranchers", "Astloch",
    "Fascinate", "Miltonian", "Warnes", "Combo", "Spirax", "Aubrey",
    "Flavors", "Macondo", "Federant", "Geostar", "Sevillana", "Unlock"].rand()


proc get_random_sans_font*(): string =
  ## Get a random sans font name as string. These are for serious stuff.
  @["Roboto", "Oswald", "Montserrat", "Raleway", "Ubuntu", "Arimo", "Muli",
    "Dosis", "Oxygen", "Nunito", "Hind", "Cabin", "Catamaran", "Abel",
    "Asap", "Quicksand", "Karla", "Signika", "Questrial", "Exo", "Acme",
    "Orbitron", "Rubik", "Monda", "BenchNine", "ABeeZee", "Gudea", "Teko",
    "Armata", "Economica", "Ruda", "Aclonica", "Sintony", "Yantramanav",
    "Voltaire", "Amaranth", "Cantarell", "Rambla", "Varela", "Aldrich",
    "Antic", "Actor", "Nobile", "Electrolize", "Heebo", "Homenaje", "Jura",
    "Molengo", "Viga", "Syncopate", "Basic", "Candal", "Michroma", "Carme",
    "Marmelad", "Telex", "Chivo", "Spinnaker", "Convergence", "Allerta",
    "Marvel", "Quantico", "Puritan", "Magra", "Rosario", "Mako", "Asul",
    "Anaheim", "Tauri", "Metrophobic", "Strait", "Belleza", "Inder", "Geo",
    "Capriola", "Assistant", "Prompt", "Lekton", "Imprima", "Orienta",
    "Gafata", "Shanti", "Federo", "Englebert", "Rationale", "Numans",
    "Cagliostro", "Ruluko", "Snippet", "Fresca", "Galdeano", "Lato"].rand()


proc get_random_serif_font*(): string =
  ## Get a random serif font name as string. These are for serious stuff.
  @["Bitter", "Arvo", "Alegreya", "Vollkorn", "Rokkitt", "Cinzel", "Ovo",
    "Domine", "Sanchez", "Vidaloka", "Tinos", "Arapey", "Cardo", "Kreon",
    "Glegoo", "Neuton", "Adamina", "Volkhov", "Copse", "Alice", "Prata",
    "Enriqueta", "Prociono", "Kameron", "Martel", "Lusitana", "Average",
    "Andada", "Lustria", "Marcellus", "Cutive", "Halant", "Rasa", "Mate",
    "Coustard", "BioRhyme", "Pridi", "Trocchi", "Radley", "Caudex", "Yrsa",
    "Rufina", "Karma", "Quando", "Alike", "Bentham", "Poly", "Brawler",
    "Judson", "Cormorant", "Fenix", "Kurale", "Gabriela", "Unna", "Junge",
    "Belgrano", "Cambo", "Tienne", "Balthazar", "Italiana", "Podkova",
    "Amethysta", "Ledger", "Buenard", "Habibi", "Esteban", "Inika", "Sura",
    "Artifika", "Rosarivo", "Stoke", "Almendra", "Laila", "Kadwa",
    "Petrona", "Trykker", "Montaga", "Sahitya", "Asar", "Peddana"].rand()


proc get_random_font*(): string =
  ## Get a random font name as string. Any kind of font.
  @[get_random_handwriting_font(), get_random_mono_font(),
    get_random_display_font(), get_random_sans_font(),
    get_random_serif_font()].rand()


proc get_random_pastel_color*(tone: string=""): tuple =
   ## Get a random dark or light color as string, useful for CSS styling.
   let light_colors_tuple = @[
       "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige",
       "cornsilk", "floralwhite", "ghostwhite", "honeydew", "ivory",
       "lavender", "lavenderblush", "lemonchiffon", "lightcyan",
       "lightgoldenrodyellow", "lightgrey", "lightpink", "lightskyblue",
       "lightyellow", "linen", "mintcream", "oldlace", "papayawhip",
       "peachpuff", "seashell", "skyblue", "snow", "thistle", "white"]
   let dark_colors_tuple = @[
       "brown", "chocolate", "crimson", "darkblue", "darkgoldenrod",
       "darkgray", "darkgreen", "darkolivegreen", "darkorange", "darkred",
       "darkslateblue", "darkslategray", "dimgray", "dodgerblue",
       "firebrick", "forestgreen", "indigo", "maroon", "mediumblue",
       "midnightblue", "navy", "olive", "olivedrab", "royalblue",
       "saddlebrown", "seagreen", "sienna", "slategray", "teal"]

   var colors_array: seq[string]
   if $tone == "light":
       colors_array = light_colors_tuple
   elif $tone == "dark":
       colors_array = dark_colors_tuple
   else:
       colors_array = light_colors_tuple & dark_colors_tuple

   let colo = colors_array.rand()
   let hexa = parseColor(colo)
   let rgbv = hexa.extractRGB

   let c: Color = (
     name: colo,
     hexa: toLower($hexa),
     rgb: [int(rgbv.r), int(rgbv.g), int(rgbv.b)],
     rgb_percent: [int(rgbv.r * 100 / 255), int(rgbv.g * 100 / 255), int(rgbv.b * 100 / 255)])
   result = c


proc get_random_css_pattern*(): string =
  ## Get a random CSS3 seamless pattern with random pastel colors as string.
  ## For quick but cool HTML styling on modern browsers.
  [css1, css2, css3, css4, css5, css6, css7, css8, css9, css10,
   css11, css12, css13, css14, css15, css16, css17, css18, css19, css20,
   css21, css22, css23, css24, css25, css26, css27, css28, css29, css30,
   css31, css32, css33, css34, css35, css36, css37, css38, css39, css40,
   css41, css42, css43, css44, css45, css46, css47, css48, css49, css50,
   css51, css52, css53, css54, css55].rand().format(
   get_random_pastel_color("light").hexa, get_random_pastel_color("dark").hexa)


if is_main_module:
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
