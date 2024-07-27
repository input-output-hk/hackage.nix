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
    flags = { dev = false; tools = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "hscdio"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2018-2021 Sam May";
      maintainer = "sam@eitilt.life";
      author = "Sam May";
      homepage = "https://ag.eitilt.life/hscdio";
      url = "";
      synopsis = "Haskell bindings to the libcdio disc-reading library.";
      description = "The C library \"libcdio\" provides unified functions for reading data from\nCDs and disc images across an impressive range of operating sysems.  This\npackage provides Haskell bindings for those functions, in both a format\nfamiliar to anyone who has used the original library, and a format more\nnative to the Haskell ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [ (pkgs."cdio" or (errorHandler.sysDepError "cdio")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "pack-cdtext" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscdio" or (errorHandler.buildDepError "hscdio"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = if !flags.tools then false else true;
        };
      };
      tests = {
        "property" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscdio" or (errorHandler.buildDepError "hscdio"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or (errorHandler.buildDepError "hedgehog-classes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "8.6.1"
            then false
            else true;
        };
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscdio" or (errorHandler.buildDepError "hscdio"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "upstream" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscdio" or (errorHandler.buildDepError "hscdio"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }