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
      specVersion = "1.18";
      identifier = { name = "cfipu"; version = "1.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "https://github.com/bairyn/cfipu";
      url = "";
      synopsis = "cfipu processor for toy brainfuck-like language";
      description = "A cfipu processor that can interpret and process cfipu source.\n\ncfipu is a toy brainfuck-like language.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cfipu" = {
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