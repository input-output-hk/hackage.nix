{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14.0";
      identifier = {
        name = "prizm";
        version = "0.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Parnell Springmeyer";
      maintainer = "parnell@ixmat.us";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/prizm";
      url = "http://hackage.haskell.org/package/prizm";
      synopsis = "Compute with colors and differenct color spaces";
      description = "`prizm` is a Haskell library for computing with colors. Specifically\nproviding functions for transforming between different color spaces,\ninterpolating colors and adjusting the tint, shade, hue, or\nlightness or a color.\n\nMy inspiration for writing this was Sass and Bourbon, both implement\ninteresting functions for computing with colors for use in\nstylesheets and I wanted the same thing for use in <http://fvisser.nl/clay/ Clay>.\n\n/Colour Module/\n\nThere is some overlap with the Haskell Colour Module that already\nexists; however, this library is filling a couple of needs the\nother doesn't satisfy. Primarily transformations and color\nmutations in the CIE L*Ch space.\n\n/Supported Algorithms & Functions/\n\nAll of these functions operate on color within the CIE L\\*Ch\nrepresentation. The percentage values may range between -100\nand 100.\n\n* sRGB <-> CIE XYZ\n\n* CIE XYZ <-> CIE L\\*ab\n\n* CIE L\\*ab <-> CIE L\\*Ch\n\n* Color interpolation\n\n* Tinting / Darkening\n\n* Lightness\n\n* Hue\n\n* Chroma/Saturation\n\n/Formulas, Resources, and Links/\n\n* <http://www.brucelindbloom.com/index.html?Info.html General Color Formulas, Data, and Algorithms>\n\n* <http://rip94550.wordpress.com/2011/07/04/color-cielab-and-tristimulus-xyz/ CIE Conversion Mathematics>\n\n* <http://www.easyrgb.com/index.php?X=MATH&H=01 Conversion Algorithm Sources>\n\n* <https://github.com/mikeemoo/ColorJizz-PHP/blob/master/src/MischiefCollective/ColorJizz/ColorJizz.php Good list of useful color manipulation formulas>";
      buildType = "Simple";
    };
    components = {
      "prizm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.prizm)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }