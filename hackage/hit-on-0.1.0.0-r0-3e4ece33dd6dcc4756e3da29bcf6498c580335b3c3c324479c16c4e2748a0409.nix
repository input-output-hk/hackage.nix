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
      specVersion = "2.4";
      identifier = { name = "hit-on"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/hit-on";
      url = "";
      synopsis = "Haskell Git Helper Tool";
      description = "Haskell Git Helper Tool";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."github" or (errorHandler.buildDepError "github"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."shellmet" or (errorHandler.buildDepError "shellmet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "hit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hit-on" or (errorHandler.buildDepError "hit-on"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hit-on-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."github" or (errorHandler.buildDepError "github"))
            (hsPkgs."hit-on" or (errorHandler.buildDepError "hit-on"))
            ];
          buildable = true;
          };
        };
      };
    }