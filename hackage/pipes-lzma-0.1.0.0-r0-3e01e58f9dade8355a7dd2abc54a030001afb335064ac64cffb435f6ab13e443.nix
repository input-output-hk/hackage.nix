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
      identifier = { name = "pipes-lzma"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/pipes-lzma";
      url = "";
      synopsis = "LZMA compressors and decompressors for the Pipes package";
      description = "This package provides a @pipes@ interface to the LZMA compression algorithm\nused by the @.xz@ file format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."lzma" or (errorHandler.buildDepError "lzma"))
          ];
        buildable = true;
        };
      exes = {
        "pipes-lzma-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-lzma" or (errorHandler.buildDepError "pipes-lzma"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "pipes-lzma-unxz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-lzma" or (errorHandler.buildDepError "pipes-lzma"))
            ];
          buildable = true;
          };
        };
      };
    }