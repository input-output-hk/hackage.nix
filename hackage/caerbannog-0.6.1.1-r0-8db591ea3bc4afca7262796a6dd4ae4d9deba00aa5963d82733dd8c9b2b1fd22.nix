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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "caerbannog"; version = "0.6.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "Lennart Kolmodin";
      homepage = "";
      url = "";
      synopsis = "That rabbit's got a vicious streak a mile wide!";
      description = "Caerbannog is a drop in replacement for the @binary-bits@ package. Unlike\n@binary-bits@ Caerbannog works with GHC 8.10, 8.8, and 8.6.\n\nThe original package description of @binary-bits@ at version 0.5 was: \"Bit\nparsing\\/writing on top of binary. Provides functions to read and write bits\nto and from 8\\/16\\/32\\/64 words.\"\n\nCaerbannog allows you to do bit level gets and puts on top of the interface\nprovided by the @binary@ package. This can be useful for parsing or\ngenerating binary formats that are not byte aligned.\n\nThere are many names for these types of actions: get and put, read and write,\nparse and generate, deserialize and serialize, decode and encode. Caerbannog\ndoesn't care which word you use. It'll work anyway.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."caerbannog" or (errorHandler.buildDepError "caerbannog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }