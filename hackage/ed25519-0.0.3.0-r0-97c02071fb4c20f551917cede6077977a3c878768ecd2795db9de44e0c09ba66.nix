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
    flags = { test-properties = true; test-hlint = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ed25519"; version = "0.0.3.0"; };
      license = "MIT";
      copyright = "Copyright (c) Austin Seipp 2013-2015";
      maintainer = "Austin Seipp <aseipp@pobox.com>";
      author = "Austin Seipp";
      homepage = "http://thoughtpolice.github.com/hs-ed25519";
      url = "";
      synopsis = "ed25519 cryptographic signatures";
      description = "This package provides a simple, portable implementation of the\ned25519 public-key signature system. It also includes support for\ndetached signatures.\n\nThe underlying implementation uses the @ref10@ implementation of\ned25519 from SUPERCOP, and should be relatively fast.\n\nFor more information (including how to get a copy of the software)\nvisit <http://ed25519.cr.yp.to>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = pkgs.lib.optionals (!!flags.test-properties) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."ed25519" or (errorHandler.buildDepError "ed25519"))
          ];
          buildable = if !flags.test-properties then false else true;
        };
        "hlint" = {
          depends = pkgs.lib.optionals (!!flags.test-hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if !flags.test-hlint then false else true;
        };
      };
      benchmarks = {
        "bench1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ed25519" or (errorHandler.buildDepError "ed25519"))
          ];
          buildable = true;
        };
      };
    };
  }