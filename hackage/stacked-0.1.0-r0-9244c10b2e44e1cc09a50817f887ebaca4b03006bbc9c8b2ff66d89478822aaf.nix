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
      specVersion = "1.12";
      identifier = { name = "stacked"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) Modus Create LLC and its affiliates";
      maintainer = "arnaud.spiwack@tweag.io";
      author = "Arnaud Spiwack";
      homepage = "https://github.com/tweag/stacked#readme";
      url = "";
      synopsis = "A modern indexed monad stack";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
        ];
        buildable = true;
      };
    };
  }