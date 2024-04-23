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
      specVersion = "1.2";
      identifier = { name = "hpuz"; version = "1.0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) Chris Casinghino 2009-2010";
      maintainer = "chris.casinghino@gmail.com";
      author = "Chris Casinghino";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libpuz";
      description = "Provides support for reading and writing the .puz crossword puzzle\nformat from haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }