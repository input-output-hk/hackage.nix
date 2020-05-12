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
      identifier = { name = "cabal2arch"; version = "0.7.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ArchHaskell Team <arch-haskell@haskell.org>";
      author = "Don Stewart <dons@galois.com>";
      homepage = "http://github.com/archhaskell/";
      url = "";
      synopsis = "Create Arch Linux packages from Cabal packages.";
      description = "Create Arch Linux packages from Cabal packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal2arch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."archlinux" or (errorHandler.buildDepError "archlinux"))
            ];
          buildable = true;
          };
        "manycabal2arch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."archlinux" or (errorHandler.buildDepError "archlinux"))
            ];
          buildable = true;
          };
        };
      };
    }