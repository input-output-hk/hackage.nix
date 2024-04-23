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
      specVersion = "3.0";
      identifier = { name = "dr-cabal"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2022 Dmitrii Kovanikov";
      maintainer = "Dmitrii Kovanikov <kovanikov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/chshersh/dr-cabal";
      url = "";
      synopsis = "See README for more info";
      description = "CLI tool for profiling Haskell dependencies build times.\nSee [README.md](https://github.com/chshersh/dr-cabal#dr-cabal) for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."colourista" or (errorHandler.buildDepError "colourista"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
        ];
        buildable = true;
      };
      exes = {
        "dr-cabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."dr-cabal" or (errorHandler.buildDepError "dr-cabal"))
          ];
          buildable = true;
        };
      };
    };
  }