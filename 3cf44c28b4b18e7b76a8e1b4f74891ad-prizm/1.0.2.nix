{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14.0";
      identifier = {
        name = "prizm";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Parnell Springmeyer";
      maintainer = "parnell+hackage@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/prizm";
      url = "http://hackage.haskell.org/package/prizm";
      synopsis = "Color transformations in different color spaces";
      description = "@prizm@ is a Haskell library for transforming colors. Specifically,\nproviding functions for transforming between different color spaces\n(@CIE@ and @sRGB@), interpolating colors and adjusting the tint,\nshade, hue, or lightness or a color.\n\nThe inspiration for this library came from a desire to blend two\ncolors represented in the @sRGB@ color space. My research about color\nblending and color space representation in the computer led me to\nthe conclusion that the @CIE L*Ch@ color space is the most effective\nfor blending because it most accurately represents how the human eye\nsees hue and therefore preserves (and blends) hue the most\naccurately.\n\n/Colour Module/\n\nThere is a bit of overlap with the Haskell Colour Module; however,\nthis library is filling a couple of needs the other doesn't\nsatisfy. Primarily transformations and color mutations in the @CIE\nL*Ch@ space.\n\n/Supported Algorithms & Functions/\n\nAll of these functions operate on color within the @CIE L*Ch@ color\nspace. The percentage values may range between -100 and 100.\n\n* @sRGB     <-> CIE XYZ @\n\n* @CIE XYZ  <-> CIE L*ab@\n\n* @CIE L*ab <-> CIE L*Ch@\n\n* Color interpolation\n\n* Tinting / Darkening\n\n* Lightness\n\n* Hue\n\n* Chroma/Saturation\n\n/Formulas, Resources, and Links/\n\n* <http://www.brucelindbloom.com/index.html?Info.html General Color Formulas, Data, and Algorithms>\n\n* <http://rip94550.wordpress.com/2011/07/04/color-cielab-and-tristimulus-xyz/ CIE Conversion Mathematics>\n\n* <http://www.easyrgb.com/index.php?X=MATH&H=01 Conversion Algorithm Sources>\n\n* <https://github.com/mikeemoo/ColorJizz-PHP/blob/master/src/MischiefCollective/ColorJizz/ColorJizz.php Good list of useful color manipulation formulas>";
      buildType = "Simple";
    };
    components = {
      "prizm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.convertible)
          (hsPkgs.mono-traversable)
          (hsPkgs.data-default-class)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.prizm)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.convertible)
            (hsPkgs.test-framework)
            (hsPkgs.mono-traversable)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }