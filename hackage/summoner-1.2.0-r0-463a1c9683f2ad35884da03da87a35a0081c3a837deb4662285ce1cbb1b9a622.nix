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
      specVersion = "2.0";
      identifier = { name = "summoner"; version = "1.2.0"; };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/summoner";
      url = "";
      synopsis = "Tool for scaffolding completely configured production Haskell projects.";
      description = "Tool for scaffolding completely configured production Haskell projects.\nSee [README.md](https://github.com/kowainik/summoner#-summoner) for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          ];
        buildable = true;
        };
      exes = {
        "summon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."summoner" or (errorHandler.buildDepError "summoner"))
            ];
          buildable = true;
          };
        };
      tests = {
        "summoner-test" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
            (hsPkgs."summoner" or (errorHandler.buildDepError "summoner"))
            ];
          buildable = true;
          };
        };
      };
    }