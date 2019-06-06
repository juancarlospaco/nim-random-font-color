## This file constains the constants for random_font_color.
##
## Get a random CSS3 pattern as string. For quick HTML styling.
##
## This groups have been tested on HTML/CSS with one each other,
## they look pretty good on all combinations, we are not Designers,
## but this is useful for quick templating and boilerplates styling.
## From lea.verou.me/css3patterns and bennettfeely.com/gradients and my own.


## Temporal templates to build CSS patterns from, they will use random pastel colors.
const css1 = r"""
background:
  radial-gradient(circle at 0% 50%, rgba(96, 16, 48, 0) 9px, $2 10px, rgba(96, 16, 48, 0) 11px) 0 10px,
  radial-gradient(at 99% 99%, rgba(96, 16, 48, 0) 9px, $2 10px, rgba(96, 16, 48, 0) 11px), $1;
background-size: 20px 20px;
"""


const css2 = r"""
background:
  linear-gradient(63deg, $2 23%, transparent 23%) 7px 0,
  linear-gradient(63deg, transparent 74%, $2 78%),
  linear-gradient(63deg, transparent 34%, $2 38%, #999 58%, transparent 62%), $1;
background-size: 16px 48px;
"""


const css3 = r"""
background: $1;
background:
  linear-gradient(115deg, transparent 75%, $2 75%) 0 0,
  linear-gradient(245deg, transparent 75%, $2 75%) 0 0,
  linear-gradient(115deg, transparent 75%, $2 75%) 7px -15px,
  linear-gradient(245deg, transparent 75%, $2 75%) 7px -15px, $1;
background-size: 15px 30px;
"""


const css4 = r"""
background:
  linear-gradient(45deg, $2 45px, transparent 45px)64px 64px,
  linear-gradient(45deg, $2 45px, transparent 45px,transparent 91px, $1 91px, $1 135px, transparent 135px),
  linear-gradient(-45deg, $2 23px, transparent 23px, transparent 68px, $2 68px, $2 113px, transparent 113px, transparent 158px,$2 158px);
background-color: $1;
background-size: 128px 128px;
"""


const css5 = r"""
background:
  linear-gradient(135deg, $2 25%, transparent 25%) -50px 0,
  linear-gradient(225deg, $2 25%, transparent 25%) -50px 0,
  linear-gradient(315deg, $2 25%, transparent 25%),
  linear-gradient(45deg, $2 25%, transparent 25%);
background-size: 99px 99px;
background-color: $1;
"""


const css6 = r"""
background:
  linear-gradient(135deg, $1 22px, $2 22px, $2 24px, transparent 24px, transparent 67px, $2 67px, $2 69px, transparent 69px),
  linear-gradient(225deg, $1 22px, $2 22px, $2 24px, transparent 24px, transparent 67px, $2 67px, $2 69px, transparent 69px) 0 64px;
background-color: $1;
background-size: 64px 128px;
"""


const css7 = r"""
background-color: $2;
background-image:
  radial-gradient(white, rgba(255,255,255,.2) 2px, transparent 40px),
  radial-gradient(yellow, rgba(255,255,255,.15) 1px, transparent 30px),
  radial-gradient($1, rgba(255,255,255,.1) 2px, transparent 40px),
  radial-gradient(rgba(255,255,255,.4), rgba(255,255,255,.1) 2px, transparent 30px);
background-size: 550px 550px, 350px 350px, 250px 250px, 150px 150px;
background-position: 0 0, 40px 60px, 130px 270px, 70px 99px;
"""


const css8 = r"""
background-color: $1;
background-image:
  radial-gradient($2 9px, transparent 9px),
  repeating-radial-gradient($2 0, $2 4px, transparent 5px, transparent 20px, $2 21px, $2 25px, transparent 26px, transparent 50px);
background-size: 30px 30px, 90px 90px;
background-position: 0 0;
"""


const css9 = r"""
background:
  radial-gradient($1 0, rgba(255,255,255,.3) 30%, $2 32%, transparent 33%) 0 0,
  radial-gradient($1 0, rgba(255,255,255,.1) 11%, $2 13%, transparent 14%) 0 0,
  radial-gradient($1 0, rgba(255,255,255,.2) 17%, $2 19%, transparent 20%) 0 110px,
  radial-gradient($1 0, rgba(255,255,255,.2) 11%, $2 13%, transparent 14%) -130px -170px,
  radial-gradient($1 0, rgba(255,255,255,.2) 11%, $2 13%, transparent 14%) 130px 370px,
  radial-gradient($1 0, rgba(255,255,255,.1) 11%, $2 13%, transparent 14%) 0 -1;
background-size: 470px 470px, 970px 970px, 410px 410px, 610px 610px, 530px 530px, 730px 730px, 100% 100%;
"""


const css10 = r"""
background:
  radial-gradient(black 15%, transparent 16%) 0 0,
  radial-gradient(black 15%, transparent 16%) 8px 8px,
  radial-gradient(rgba(255,255,255,.1) 15%, transparent 20%) 0 1px,
  radial-gradient(rgba(255,255,255,.1) 15%, transparent 20%) 8px 9px;
background-color: $2;
background-size:16px 16px;
"""


const css11 = r"""
background:
  radial-gradient(circle closest-side at 60% 43%, $2 26%, rgba(187,0,51,0) 27%),
  radial-gradient(circle closest-side at 40% 43%, $2 26%, rgba(187,0,51,0) 27%),
  radial-gradient(circle closest-side at 40% 22%, $1 45%, rgba(221,51,85,0) 46%),
  radial-gradient(circle closest-side at 60% 22%, $1 45%, rgba(221,51,85,0) 46%),
  radial-gradient(circle closest-side at 50% 35%, $1 30%, rgba(221,51,85,0) 31%),
  radial-gradient(circle closest-side at 60% 43%, $2 26%, rgba(187,0,51,0) 27%) 50px 50px,
  radial-gradient(circle closest-side at 40% 43%, $2 26%, rgba(187,0,51,0) 27%) 50px 50px,
  radial-gradient(circle closest-side at 40% 22%, $1 45%, rgba(221,51,85,0) 46%) 50px 50px,
  radial-gradient(circle closest-side at 60% 22%, $1 45%, rgba(221,51,85,0) 46%) 50px 50px,
  radial-gradient(circle closest-side at 50% 35%, $1 30%, rgba(221,51,85,0) 31%) 50px 50px;
background-color: $2;
background-size: 99px 99px;
"""


const css12 = r"""
background-color: $1;
background-image:
  repeating-linear-gradient(120deg, rgba(255,255,255,.1), rgba(255,255,255,.1) 1px, transparent 1px, transparent 60px),
  repeating-linear-gradient(60deg, rgba(255,255,255,.1), rgba(255,255,255,.1) 1px, transparent 1px, transparent 60px),
  linear-gradient(60deg, rgba(0,0,0,.1) 25%, transparent 25%, transparent 75%, rgba(0,0,0,.1) 75%, rgba(0,0,0,.1)),
  linear-gradient(120deg, rgba(0,0,0,.1) 25%, transparent 25%, transparent 75%, rgba(0,0,0,.1) 75%, rgba(0,0,0,.1));
background-size: 70px 120px;
"""


const css13 = r"""
background-color: $2;
background-size: 58px 58px;
background-position: 0 2px, 4px 35px, 29px 31px, 33px 6px, 0 36px, 4px 2px, 29px 6px, 33px 30px;
background-image:
  linear-gradient(335deg, $1 23px, transparent 23px),
  linear-gradient(155deg, $1 23px, transparent 23px),
  linear-gradient(335deg, $1 23px, transparent 23px),
  linear-gradient(155deg, $1 23px, transparent 23px),
  linear-gradient(335deg, $1 9px, transparent 9px),
  linear-gradient(155deg, $1 9px, transparent 9px),
  linear-gradient(335deg, $1 9px, transparent 9px),
  linear-gradient(155deg, $1 9px, transparent 9px);
"""


const css14 = r"""
background:
  radial-gradient(circle at 100% 50%, transparent 20%, rgba(255,255,255,.3) 21%, rgba(255,255,255,.3) 34%, transparent 35%, transparent),
radial-gradient(circle at 0% 50%, transparent 20%, rgba(255,255,255,.3) 21%, rgba(255,255,255,.3) 34%, transparent 35%,transparent) 0 -50px;
background-color: $1;
background-size: 75px 99px;
"""


const css15 = r"""
background:
  radial-gradient(circle, transparent 20%, $1 20%, $1 80%, transparent 80%, transparent),
  radial-gradient(circle, transparent 20%, $1 20%, $1 80%, transparent 80%, transparent) 50px 50px,
  linear-gradient($2 8px, transparent 8px) 0 -4px, linear-gradient(90deg, $2 8px, transparent 8px) -4px 0;
background-color: $1;
background-size: 100px 100px, 100px 100px, 50px 50px, 50px 50px;
"""


const css16 = r"""
background:
  linear-gradient(324deg, $2 4%,   transparent 4%) -70px 43px,
  linear-gradient( 36deg, $2 4%,   transparent 4%) 30px 43px,
  linear-gradient( 72deg, $1 8.5%, transparent 8.5%) 30px 43px,
  linear-gradient(288deg, $1 8.5%, transparent 8.5%) -70px 43px,
  linear-gradient(216deg, $1 7.5%, transparent 7.5%) -70px 23px,
  linear-gradient(144deg, $1 7.5%, transparent 7.5%) 30px 23px,
  linear-gradient(324deg, $2 4%,   transparent 4%) -20px 93px,
  linear-gradient( 36deg, $2 4%,   transparent 4%) 80px 93px,
  linear-gradient( 72deg, $1 8.5%, transparent 8.5%) 80px 93px,
  linear-gradient(288deg, $1 8.5%, transparent 8.5%) -20px 93px,
  linear-gradient(216deg, $1 7.5%, transparent 7.5%) -20px 73px,
  linear-gradient(144deg, $1 7.5%, transparent 7.5%) 80px 73px;
background-color: $2;
background-size: 100px 100px;
"""


const css17 = r"""
background-image:
  radial-gradient(closest-side, transparent 0%, transparent 75%, lightgrey 76%, grey 85%, $2 86%, $1 94%, white 95%, white 103%, white 113%, $1 121%, $2 122%, grey 130%, darkgrey 131%, black 140%),
  radial-gradient(closest-side, transparent 0%, transparent 75%, lightgrey 76%, grey 85%, $2 86%, $1 94%, white 95%, white 103%, white 113%, $1 121%, $2 122%, grey 130%, darkgrey 131%, black 140%);
background-size: 110px 110px;
background-color: transparent;
background-position: 0 0, 55px 55px;
"""


const css18 = r"""
background-color: $1;
background-image:
  radial-gradient(closest-side, transparent 98%, rgba(0,0,0,.3) 99%),
  radial-gradient(closest-side, transparent 98%, rgba(0,0,0,.3) 99%);
background-size: 80px 80px;
background-position: 0 0, 40px 40px;
"""


const css19 = r"""
background-color: $1;
background-image:
  linear-gradient(335deg, grey 23px, transparent 23px),
  linear-gradient(155deg, $2 23px, transparent 23px),
  linear-gradient(335deg, grey 23px, transparent 23px),
  linear-gradient(155deg, $2 23px, transparent 23px);
background-size: 58px 58px;
background-position: 0 2px, 4px 35px, 29px 31px, 34px 6px;
"""


const css20 = r"""
background-color: $2;
background-image:
  radial-gradient(circle at 100% 150%, $2 24%, $1 25%, $1 28%, $2 29%, $2 36%, $1 36%, $1 40%, transparent 40%, transparent),
  radial-gradient(circle at 0 150%, $2 24%, $1 25%, $1 28%, $2 29%, $2 36%, $1 36%, $1 40%, transparent 40%, transparent),
  radial-gradient(circle at 50%  100%, $1 10%, $2 11%, $2 23%, $1 24%, $1 30%, $2 31%, $2 43%, $1 44%, $1 50%, $2 51%, $2 63%, $1 64%, $1 71%, transparent 71%, transparent),
  radial-gradient(circle at 100% 50%, $1 5%, $2 6%, $2 15%, $1 16%, $1 20%, $2 21%, $2 30%, $1 31%, $1 35%, $2 36%, $2 45%, $1 46%, $1 49%, transparent 50%, transparent),
  radial-gradient(circle at 0    50%, $1 5%, $2 6%, $2 15%, $1 16%, $1 20%, $2 21%, $2 30%, $1 31%, $1 35%, $2 36%, $2 45%, $1 46%, $1 49%, transparent 50%, transparent);
background-size: 99px 50px;
"""


const css21 = r"""
background-color: lightgrey;
background-image:
  linear-gradient(30deg, $2 12%, transparent 12.5%, transparent 87%, $2 87.5%, $2),
  linear-gradient(150deg, $2 12%, transparent 12.5%, transparent 87%, $2 87.5%, $2),
  linear-gradient(30deg, $2 12%, transparent 12.5%, transparent 87%, $2 87.5%, $2),
  linear-gradient(150deg, $2 12%, transparent 12.5%, transparent 87%, $2 87.5%, $2),
  linear-gradient(60deg, $1 25%, transparent 25.5%, transparent 75%, $1 75%, $1),
  linear-gradient(60deg, $1 25%, transparent 25.5%, transparent 75%, $1 75%, $1);
background-size: 80px 140px;
background-position: 0 0, 0 0, 40px 70px, 40px 70px, 0 0, 40px 70px;
"""


const css22 = r"""
background-color: $2;
background-image:
  radial-gradient($1 15%, transparent 16%),
  radial-gradient(white 15%, transparent 16%);
background-size: 60px 60px;
background-position: 0 0, 30px 30px;
"""


const css23 = r"""
background:
  linear-gradient(-45deg, $1 25%, transparent 25%, transparent 75%, $2 75%, $2) 0 0,
  linear-gradient(-45deg, $2 25%, transparent 25%, transparent 75%, $1 75%, $1) 1em 1em,
  linear-gradient(45deg, $2 17%, transparent 17%, transparent 25%, $2 25%, $2 36%, transparent 36%, transparent 64%, $2 64%, $2 75%, transparent 75%, transparent 83%, $2 83%) 1em 1em;
background-color: $1;
background-size: 2em 2em;
"""


const css24 = r"""
background-color: $1;
background-image:
  linear-gradient(45deg, $2 25%, transparent 25%, transparent 75%, $2 75%, $2),
  linear-gradient(45deg, $2 25%, transparent 25%, transparent 75%, $2 75%, $2);
background-size: 60px 60px;
background-position: 0 0, 30px 30px;
"""


const css25 = r"""
background-color: $1;
background-image:
  linear-gradient(45deg, $2 25%, transparent 25%, transparent 75%, $2 75%, $2),
  linear-gradient(-45deg, $2 25%, transparent 25%, transparent 75%, $2 75%, $2);
background-size: 60px 60px;
"""


const css26 = r"""
background-color: $1;
background-image:
  repeating-linear-gradient(transparent, transparent 50px, rgba(0,0,0,.4) 50px, rgba(0,0,0,.4) 53px, transparent 53px, transparent 63px, rgba(0,0,0,.4) 63px, rgba(0,0,0,.4) 66px, transparent 66px, transparent 116px, rgba(0,0,0,.5) 116px, rgba(0,0,0,.5) 166px, rgba(255,255,255,.2) 166px, rgba(255,255,255,.2) 169px, rgba(0,0,0,.5) 169px, rgba(0,0,0,.5) 179px, rgba(255,255,255,.2) 179px, rgba(255,255,255,.2) 182px, rgba(0,0,0,.5) 182px, rgba(0,0,0,.5) 232px, transparent 232px),
  repeating-linear-gradient(270deg, transparent, transparent 50px, rgba(0,0,0,.4) 50px, rgba(0,0,0,.4) 53px, transparent 53px, transparent 63px, rgba(0,0,0,.4) 63px, rgba(0,0,0,.4) 66px, transparent 66px, transparent 116px, rgba(0,0,0,.5) 116px, rgba(0,0,0,.5) 166px, rgba(255,255,255,.2) 166px, rgba(255,255,255,.2) 169px, rgba(0,0,0,.5) 169px, rgba(0,0,0,.5) 179px, rgba(255,255,255,.2) 179px, rgba(255,255,255,.2) 182px, rgba(0,0,0,.5) 182px, rgba(0,0,0,.5) 232px, transparent 232px),
  repeating-linear-gradient(125deg, transparent, transparent 2px, rgba(0,0,0,.2) 2px, rgba(0,0,0,.2) 3px, transparent 3px, transparent 5px, rgba(0,0,0,.2) 5px);
"""


const css27 = r"""
background-color: $1;
background-image:
  linear-gradient(90deg, transparent 79px, #abced4 79px, #abced4 81px, transparent 81px),
  linear-gradient($2 .1em, transparent .1em);
background-size: 99% 1.2em;
"""


const css28 = r"""
background-color: $2;
background-image:
  linear-gradient($1 2px, transparent 2px),
  linear-gradient(90deg, $1 2px, transparent 2px),
  linear-gradient(rgba(255,255,255,.3) 1px, transparent 1px),
  linear-gradient(90deg, rgba(255,255,255,.3) 1px, transparent 1px);
background-size: 100px 100px, 100px 100px, 20px 20px, 20px 20px;
background-position: -2px -2px, -2px -2px, -1px -1px, -1px -1px;
"""


const css29 = r"""
background-color: $1;
background-image:
  linear-gradient(90deg, rgba(20,20,20,.5) 50%,transparent 50%),
  linear-gradient(rgba(21,20,20,.5) 50%, transparent 50%);
background-size: 50px 50px;
"""


const css30 = r"""
background-color: $1;
background-image: repeating-linear-gradient(45deg, transparent, transparent 35px, rgba(255,255,255,.5) 35px, rgba(255,255,255,.5) 70px);
"""


const css31 = r"""
background-color: $1;
background-image:
  linear-gradient(90deg, rgba(255,255,255,.07) 50%, transparent 50%),
  linear-gradient(90deg, rgba(255,255,255,.13) 50%, transparent 50%),
  linear-gradient(90deg, transparent 50%, rgba(255,255,255,.17) 50%),
  linear-gradient(90deg, transparent 50%, rgba(255,255,255,.19) 50%);
background-size: 13px, 29px, 37px, 53px;
"""


const css32 = r"""
background-color: $1;
background-image: linear-gradient(90deg, transparent 50%, rgba(255,255,255,.5) 50%);
background-size: 50px 50px;
"""


const css33 = r"""
background-color: $1;
background-image: linear-gradient(transparent 50%, rgba(255,255,255,.5) 50%);
background-size: 50px 50px;
"""


const css34 = r"""
background:
  radial-gradient(circle farthest-side at 0% 50%,$1 23.5%, rgba(240,166,17,0) 0) 21px 30px,
  radial-gradient(circle farthest-side at 0% 50%,$2 24%, rgba(240,166,17,0) 0) 19px 30px,
  linear-gradient($1 14%,rgba(240,166,17,0) 0, rgba(240,166,17,0) 85%,$1 0) 0 0,
  linear-gradient(150deg,$1 24%,black 0,$2 26%,rgba(240,166,17,0) 0, rgba(240,166,17,0) 74%, $2 0, $2 76%, $1 0) 0 0,
  linear-gradient(30deg,$1 24%,$2 0,$2 26%,rgba(240,166,17,0) 0, rgba(240,166,17,0) 74%,$2 0,$2 76%,$1 0)0 0,
  linear-gradient(90deg,$2 2%,cyan 0,$1 98%,$2 0%)0 0 $1;
background-size: 40px 60px;
"""


const css35 = r"""
background:
  linear-gradient(315deg, transparent 75%, $1 0)-10px 0,
  linear-gradient(45deg, transparent 75%, $1 0)-10px 0,
  linear-gradient(135deg, grey 50%, transparent 0) 0 0,
  linear-gradient(45deg, black 50%, $2 0) 0 0 #561a16;
background-size: 20px 20px;
"""


const css36 = r"""
background:
  linear-gradient(45deg, $1 12%, transparent 0, transparent 88%, $1 0),
  linear-gradient(135deg, transparent 37%, grey 0, $2 63%, transparent 0),
  linear-gradient(45deg, transparent 37%, $1 0, $1 63%, transparent 0) transparent;
background-size: 25px 25px;
"""


const css37 = r"""
background-color: $1;
background-image:
  linear-gradient(144deg, $1 26px, transparent 27px),
  linear-gradient(-34deg, $1 25px, transparent 26px),
  linear-gradient(132deg, rgba(255,255,255, 1) 26px, transparent 27px),
  linear-gradient(128deg, rgba(200,200,200, 0.7) 26px, transparent 27px),
  linear-gradient(-41deg, rgba(200,200,200, 1) 27px, transparent 28px),
  linear-gradient(-52deg, rgba(255,255,255, 1) 27px, transparent 28px),
  linear-gradient(-125deg, $1 26px, transparent 27px),
  linear-gradient(55deg, $1 25px, transparent 26px),
  linear-gradient(-132deg, rgba(200,200,200, 1) 26px, transparent 27px),
  linear-gradient(-141deg, rgba(255,255,255, 1) 26px, transparent 27px),
  linear-gradient(42deg, rgba(255,255,255, 1) 27px, transparent 28px),
  linear-gradient(38deg, rgba(200,200,200, 0.5) 27px, transparent 28px);
background-size: 100px 100px;
background-position: -16px 9px, -13px -11px,-13px 13px, -13px 16px, -13px -11px, -13px -16px,-23px -1px, -3px -1px,-26px -1px, -30px -1px,-2px -1px, 1px -1px;
background-repeat: repeat;
"""


const css38 = r"""
background-color: $1;
background-image: linear-gradient(45deg, transparent 50%, rgba(0,0,0,.1) 50%);
background-size: 50px 50px;
"""


const css39 = r"""
background-image:
  linear-gradient(45deg, transparent 50%, rgba(0,0,0,0.1) 50%),
  linear-gradient(to bottom right, white, lightgrey, $1, lightgrey, $2);
background-size: 5vw 5vw, 100vw 100vh;
"""


const css40 = r"""
background: $1;
background-image:
  repeating-linear-gradient(17deg, rgba(155, 155, 255, 0.07) 17px,  transparent 30px, rgba(155, 155, 255, 0.08) 49px),
  repeating-linear-gradient(37deg, rgba(255, 55, 255, 0.07) 29px, transparent 58px, rgba(255, 55, 255, 0.06) 69px),
  repeating-linear-gradient(23deg, transparent 37px, rgba(55, 255, 255, 0.07) 74px, transparent 91px),
  repeating-linear-gradient(187deg, transparent 43px, rgba(255, 255, 55, 0.08) 96px,transparent 127px);
"""


const css41 = r"""
background-color: $1;
background-image: radial-gradient(35px 3px,$2 15%, $1 25%);
background-size: 40px 15px;
"""


const css42 = r"""
background-color: $1;
background-image:
  repeating-linear-gradient(45deg, rgba(0,0,0,0), rgba(0,0,0,0) 5px, rgba(0,0,0,.3) 5px, rgba(0,0,0,.3) 6px),
  repeating-linear-gradient(-45deg, rgba(0,0,0,0), rgba(0,0,0,0) 5px, rgba(0,0,0,.3) 5px, rgba(0,0,0,.3) 6px);
background-size: 8px 8px, 8px 8px;
"""


const css43 = r"""
background:
  linear-gradient(transparent,transparent 10px,#fff 10px, gray 14px,#fff 15px,rgba(0, 0, 0, 0) 14px,rgba(0, 0, 0, 0)),
  linear-gradient(135deg,transparent,transparent 12px,#fff 12px,#000 15px, transparent 15px,transparent),
  radial-gradient(10px 10px,circle,#FFF 7px,transparent 9px);
background-size: 35px 30px,4px 30px,20px 30px;
background-position: 0px 8px,31px 35px,25px 10px;
background-color: $1;
background-repeat: repeat-y;
"""


const css44 = r"""
background:
  radial-gradient(white 15%, transparent 6%) 0 0,
  radial-gradient(white 15%, transparent 6%) 4px 4px,
  radial-gradient(rgba(259,259,259,.1) 15%, transparent 20%) 0 .5px,
  radial-gradient(rgba(259,259,259,.1) 15%, transparent 20%) 4px 4px;
background-color: $1;
background-size: 8px 8px;
"""


const css45 = r"""
background-color: transparent;
background-image:
  repeating-linear-gradient(-30deg, transparent, transparent 35px, $1 35px, $1 70px),
  repeating-linear-gradient(30deg, transparent, transparent 35px, $2 35px, $2 70px),
  repeating-linear-gradient(90deg, transparent, transparent 35px, rgba(128,128,128,.3) 35px, rgba(128,128,128,.3) 70px);
"""


const css46 = r"""
background:
  linear-gradient(115deg, transparent 89%, skyblue 0) -128px -96px,
  linear-gradient(-115deg, transparent 89%, $1 0) 22px -96px,
  linear-gradient(-115deg, grey 11%, transparent 0) -128px 54px,
  linear-gradient(115deg, $2 11%, transparent 0) 22px 54px,
  linear-gradient(-25deg, skyblue 11%, transparent 0) -128px -22px,
  linear-gradient(25deg, transparent 89%, $1 0) -128px 128px,
  linear-gradient(25deg, grey 11%, transparent 0) 22px -22px,
  linear-gradient(-25deg, transparent 89%, $2 0) 22px 128px,
  linear-gradient(-25deg, skyblue 11%, transparent 0) -53px -96px,
  linear-gradient(25deg, transparent 89%, $1 0) -53px 54px,
  linear-gradient(25deg, grey 11%, transparent 0) 97px -96px,
  linear-gradient(-25deg, transparent 89%, $2 0) 97px 54px,
  linear-gradient(115deg, transparent 89%, skyblue 0) -53px -21px,
  linear-gradient(-115deg, $1 11%, transparent 0) -53px 129px,
  linear-gradient(-115deg, transparent 89%, grey 0) 97px -21px,
  linear-gradient(115deg, $2 11%, transparent 0) 97px 129px;
  linear-gradient(115deg, $2 11%, transparent 0) 97px 129px;
background-color: white;
background-size: 150px 150px;
background-repeat: repeat;
"""


const css47 = r"""
background-color: transparent;
background: radial-gradient($1 5%, transparent 60%, transparent 100%), $2;
background-size: 9px 9px;
background-blend-mode: screen;
"""


const css48 = r"""
background:
  repeating-radial-gradient(circle,transparent,transparent 3.5em, $2 3.5em,$2 4.5em),
  repeating-radial-gradient(circle,transparent,transparent 3.5em, $1 3.5em,$1 4.5em),
  repeating-radial-gradient(circle,transparent,transparent 2.5em, grey 2.5em,grey 2.75em), transparent;
background-blend-mode: multiply;
background-size: 10em 10em;
background-position: 0 0,5em 5em,10em 5em;
"""


const css49 = r"""
background:
  radial-gradient(transparent 0,transparent 2em,$1 2em,$1 2.5em, transparent 2.5em,transparent 100%),
  radial-gradient(transparent 0,transparent 2em, $2 2em,$2 2.5em,transparent 2.5em,transparent 100%),
  radial-gradient(transparent 0,transparent 2em, grey 2em,grey 2.5em,transparent 2.5em,transparent 100%),
  radial-gradient(transparent 0,transparent 2em, white 2em,white 2.5em,transparent 2.5em,transparent 100%), transparent;
background-blend-mode: multiply;
background-size: 5em 5em;
background-position: 0 2.5em,2.5em 0,2.5em 2.5em,0 0;
"""


const css50 = r"""
background:
  linear-gradient($1,transparent),
  linear-gradient(-45deg,	$2,transparent),
  linear-gradient(45deg,white,transparent);
background-blend-mode: multiply;
"""


const css51 = r"""
background:
  repeating-radial-gradient(circle at top left, $1, grey 2em, $2 4em, $1 6em),
  repeating-radial-gradient(circle at bottom left, $1, grey 2em, $2 4em, $1 6em),
  repeating-radial-gradient(circle at top right, $1, grey 2em, $2 4em, $1 6em),
  repeating-radial-gradient(circle at bottom right, $1, grey 2em, $2 4em, $1 6em);
background-blend-mode: multiply;
"""


const css52 = r"""
background:
  repeating-linear-gradient(transparent, transparent 10px, $2 10px, $2 15px, transparent 15px,transparent 20px, $2 15px, $2 40px, transparent 40px,transparent 45px, $2 45px, $2 50px, transparent 50px, transparent 80px),
  repeating-linear-gradient(90deg, transparent, transparent 10px, $2 10px, $2 15px, transparent 15px, transparent 20px, $2 15px, $2 40px, transparent 40px, transparent 45px, $2 45px, $2 50px, transparent 50px, transparent 80px), $1;
background-blend-mode: multiply;
"""


const css53 = r"""
background:
  repeating-linear-gradient(to top left, transparent, transparent 5em, lightgrey 5em, lightgrey 10em, transparent 10em, transparent 15em, $1 15em, $1 20em),
  repeating-linear-gradient(to top right, transparent, transparent 5em, grey 5em,grey 10em, transparent 10em,transparent 15em, $2 15em, $2 20em), white;
background-blend-mode: multiply;
"""


const css54 = r"""
background:
  repeating-linear-gradient(to top left, $1 0, $1 2em, lightgrey 2em, lightgrey 4em, $2 4em, $2 6em),
  repeating-linear-gradient(to left, white 0, white 2em, $2 2em, $2 4em, $1 4em, $1 6em), white;
background-blend-mode: multiply;
"""


const css55 = r"""
background:
  radial-gradient(transparent 0, transparent 20px, $1 0, $1 25px, transparent 0, transparent 100%),
  radial-gradient(transparent 0,transparent 20px, $1 0, $1 25px, transparent 0, transparent 100%),
  radial-gradient(transparent 0, transparent 20px, $2 0, $2 25px, transparent 0, transparent 100%),
  radial-gradient(transparent 0, transparent 20px, $2 0, $2 25px, transparent 0, transparent 100%), linen;
background-blend-mode: multiply;
background-size: 80px 80px;
background-position: 40px 40px,40px 0,0 0,0 40px;
"""

const css_patterns* = [
  css1, css2, css3, css4, css5, css6, css7, css8, css9, css10, css11, css12,
  css13, css14, css15, css16, css17, css18, css19, css20, css21, css22, css23,
  css24, css25, css26, css27, css28, css29, css30, css31, css32, css33, css34,
  css35, css36, css37, css38, css39, css40, css41, css42, css43, css44, css45,
  css46, css47, css48, css49, css50, css51, css52, css53, css54, css55,
  ]  ## List of CSS3 Seamless Patterns (need 2 colors for Background/Foreground)


########## Fonts below.


const handwriting_fonts* = [
  "Molle", "Pacifico", "Yellowtail", "Dekko", "Courgette", "Satisfy",
  "Cookie", "Handlee", "Sacramento", "Tangerine", "Damion", "Kalam",
  "Neucha", "Calligraffitti", "Rancho", "Allura", "Niconne", "Rochester",
  "Parisienne", "Merienda", "Caveat", "Tillana", "Italianno", "Sofia",
  "Arizonia", "Montez", "Sriracha", "Delius", "Qwigley", "Itim", "Julee",
  "Quintessential", "Fondamento", "Ruthie", "Condiment", "Amita",
  "Yesteryear", "Aladin", "Norican", "Engagement", "Stalemate", "Meddon",
  "Vibur", "Bilbo", "Redressed", "Devonshire", "Kavivanar", "Kristi",
  ]  ## List of Handwriting Fonts from Google Fonts Collection (Open Source).

const mono_fonts* = [
  "Inconsolata", "Cousine", "Roboto Mono", "Source Code Pro", "Droid Sans Mono",
  "Space Mono", "PT Mono", "Ubuntu Mono", "Nova Mono", "Share Tech Mono",
  "Anonymous Pro", "Oxygen Mono", "Cutive Mono", "Fira Mono",
  ]  ## List of Monospaced Fonts from Google Fonts Collection (Open Source).

const display_fonts* = [
  "Mirza", "Lobster", "Buda", "Comfortaa", "Righteous", "Chewy", "Allan",
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
  "Flavors", "Macondo", "Federant", "Geostar", "Sevillana", "Unlock",
  ]  ## List of Display Fonts from Google Fonts Collection (Open Source).

const sans_fonts* = [
  "Roboto", "Oswald", "Montserrat", "Raleway", "Ubuntu", "Arimo", "Muli",
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
  "Cagliostro", "Ruluko", "Snippet", "Fresca", "Galdeano", "Lato",
  ]  ## List of Sans Fonts from Google Fonts Collection (Open Source).

const serif_fonts* = [
  "Bitter", "Arvo", "Alegreya", "Vollkorn", "Rokkitt", "Cinzel", "Ovo",
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
  "Petrona", "Trykker", "Montaga", "Sahitya", "Asar", "Peddana",
  ]  ## List of Serif Fonts from Google Fonts Collection (Open Source).

const dark_pastel_colors* = @[
  "brown", "chocolate", "crimson", "darkblue", "darkgoldenrod",
  "darkgray", "darkgreen", "darkolivegreen", "darkorange", "darkred",
  "darkslateblue", "darkslategray", "dimgray", "dodgerblue",
  "firebrick", "forestgreen", "indigo", "maroon", "mediumblue",
  "midnightblue", "navy", "olive", "olivedrab", "royalblue",
  "saddlebrown", "seagreen", "sienna", "slategray", "teal"
  ]  ## List of Dark Pastel Colors.

const light_pastel_colors* = @[
  "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige",
  "cornsilk", "floralwhite", "ghostwhite", "honeydew", "ivory",
  "lavender", "lavenderblush", "lemonchiffon", "lightcyan",
  "lightgoldenrodyellow", "lightpink", "lightskyblue",
  "lightyellow", "linen", "mintcream", "oldlace", "papayawhip",
  "peachpuff", "seashell", "skyblue", "snow", "thistle", "white"
  ]  ## List of Dark Pastel Colors.
