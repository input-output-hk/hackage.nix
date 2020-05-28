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
    flags = { test-hlint = true; test-doc-coverage = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "keera-hails-reactive-cbmvar"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "support@keera.co.uk";
      author = "Sasha Pavlenko";
      homepage = "https://keera.co.uk/";
      url = "";
      synopsis = "Reactive Haskell on Rails - CBMVars as reactive values";
      description = "CBMVars are MVars enriched with a notion of callbacks that are\nexecuted when the value in the MVar is altered.\n\nThis package wraps CBMVars into reactive values, making it easy\nto use them as models of reactive applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."keera-callbacks" or (errorHandler.buildDepError "keera-callbacks"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }