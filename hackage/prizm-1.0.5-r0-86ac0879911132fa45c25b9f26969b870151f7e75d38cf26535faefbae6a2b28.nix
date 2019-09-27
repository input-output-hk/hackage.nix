let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18.1";
      identifier = { name = "prizm"; version = "1.0.5"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."prizm" or (buildDepError "prizm"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }