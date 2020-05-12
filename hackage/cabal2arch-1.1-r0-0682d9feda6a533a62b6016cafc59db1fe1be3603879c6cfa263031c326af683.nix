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
      identifier = { name = "cabal2arch"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ArchHaskell Team <arch-haskell@haskell.org>";
      author = "Don Stewart <dons@galois.com>,\nMatthew William Cox <matt@mattcox.ca>,\nAdam Vogt <vogt.adam@gmail.com>,\nAsgaroth <asgaroth_@gmx.de>,\nRémy Oudompheng <remyoudompheng@gmail.com>,\nMagnus Therning <magnus@therning.org>,\nPeter Simons <simons@cryp.to>";
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
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."archlinux" or (errorHandler.buildDepError "archlinux"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }