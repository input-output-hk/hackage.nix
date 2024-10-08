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
      specVersion = "1.2";
      identifier = { name = "hgl-example"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/hgl-example/";
      url = "";
      synopsis = "Various animations generated using HGL";
      description = "Various animations generated using HGL:\n\n* Locomotive with asymmetrically mounted wheels\n\n* Rotating stars\n\n* Rotating spiral\n\n* Rotating Lissajous curve\n\n* Probabilistic Sierpinski triangle";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hgl-example" = {
          depends = [
            (hsPkgs."HTam" or (errorHandler.buildDepError "HTam"))
            (hsPkgs."HGL" or (errorHandler.buildDepError "HGL"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }