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
      specVersion = "1.8";
      identifier = { name = "archlinux"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ArchHaskell Team <arch-haskell@haskell.org>";
      author = "Don Stewart <dons@galois.com>,\nRémy Oudompheng <remyoudompheng@gmail.com>,\nPeter Simons <simons@cryp.to>,\nMagnus Therning <magnus@therning.org>,\nLinus Arver <linusarver@gmail.com>";
      homepage = "http://github.com/archhaskell/";
      url = "";
      synopsis = "Support for working with Arch Linux packages.";
      description = "Support for working with Arch Linux packages.\nSee also the cabal2arch tool <http://hackage.haskell.org/package/cabal2arch>\nfor conversion between Hackage and AUR.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
    };
  }