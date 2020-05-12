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
      specVersion = "1.8";
      identifier = { name = "left4deadrl"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "Wau codec";
      description = "A base unary encoder/decoder";
      buildType = "Simple";
      };
    components = {
      exes = {
        "left4deadrl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."hscharm" or (errorHandler.buildDepError "hscharm"))
            ];
          buildable = true;
          };
        };
      };
    }