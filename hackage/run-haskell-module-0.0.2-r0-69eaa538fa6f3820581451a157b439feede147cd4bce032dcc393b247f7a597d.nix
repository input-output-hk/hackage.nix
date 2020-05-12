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
      identifier = { name = "run-haskell-module"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Migamake '2014-'2020";
      maintainer = "simons@cryp.to,\nmjgajda@gmail.com";
      author = "Michal J. Gajda,\nDmitrii Krylov";
      homepage = "";
      url = "";
      synopsis = "Running newly generated Haskell source module.";
      description = "Running generated test code in Stack/Cabal/GHC environment.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }