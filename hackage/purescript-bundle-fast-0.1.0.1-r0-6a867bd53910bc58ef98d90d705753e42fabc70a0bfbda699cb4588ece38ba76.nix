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
      identifier = { name = "purescript-bundle-fast"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mutantlemon@gmail.com";
      author = "Bit Connor";
      homepage = "https://github.com/bitc/purescript-bundle-fast";
      url = "";
      synopsis = "A fast alternative to Purescript's `psc-bundle` to be used during development";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "psc-bundle-fast" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }