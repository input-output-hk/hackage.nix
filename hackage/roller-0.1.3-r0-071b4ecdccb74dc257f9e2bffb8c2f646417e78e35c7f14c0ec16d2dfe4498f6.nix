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
      specVersion = "1.10";
      identifier = { name = "roller"; version = "0.1.3"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2013-2014 Econify, LLC";
      maintainer = "lou@econify.com";
      author = "Louis J. Scoras";
      homepage = "https://github.com/Econify/roller";
      url = "";
      synopsis = "Playing with applicatives and dice!";
      description = "A basic library and program for simulated rolling of\npolyhedral dice, as would be used in pen and paper RPGs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      exes = {
        "roller" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."roller" or (errorHandler.buildDepError "roller"))
            ];
          buildable = true;
          };
        };
      };
    }