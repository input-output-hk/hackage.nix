{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "prizm"; version = "2.0.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."prizm" or (errorHandler.buildDepError "prizm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }