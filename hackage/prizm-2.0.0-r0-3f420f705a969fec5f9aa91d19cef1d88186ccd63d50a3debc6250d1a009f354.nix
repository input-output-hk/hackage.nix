{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18.1";
      identifier = { name = "prizm"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Parnell Springmeyer";
      maintainer = "parnell+hackage@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/prizm";
      url = "http://hackage.haskell.org/package/prizm";
      synopsis = "Convert colors to different color spaces, interpolate colors, and transform colors";
      description = "@prizm@ is a Haskell library for transforming colors. Specifically,\nproviding functions for transforming between different color spaces\n(@CIE@ and @sRGB@), interpolating colors and adjusting the tint,\nshade, hue, or lightness of a color.\n\nThe inspiration for this library came from a desire to blend two\ncolors represented in the @sRGB@ color space. My research about color\nblending and color space representation in the computer led me to\nthe conclusion that the @CIE L*Ch@ color space is the most effective\nfor blending because it most accurately represents how the human eye\nsees hue and therefore preserves (and blends) hue the most\naccurately.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."mono-traversable" or ((hsPkgs.pkgs-errors).buildDepError "mono-traversable"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."prizm" or ((hsPkgs.pkgs-errors).buildDepError "prizm"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."mono-traversable" or ((hsPkgs.pkgs-errors).buildDepError "mono-traversable"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }