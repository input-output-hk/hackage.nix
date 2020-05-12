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
      identifier = { name = "roller"; version = "0.1.5"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2015 Piotr Justyna";
      maintainer = "piotr.justyna@gmail.com";
      author = "Piotr Justyna";
      homepage = "https://github.com/PiotrJustyna/roller";
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