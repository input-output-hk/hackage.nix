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
      specVersion = "1.6";
      identifier = { name = "cfopu"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "KrabbyKrap@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "cfopu processor";
      description = "A cfopu processor that can interpret and process cfopu source";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cfopu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dequeue" or (errorHandler.buildDepError "dequeue"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc.components.exes.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
            ];
          buildable = true;
          };
        };
      };
    }