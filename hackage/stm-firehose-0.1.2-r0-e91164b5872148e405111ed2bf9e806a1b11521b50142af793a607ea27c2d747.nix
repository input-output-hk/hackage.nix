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
      identifier = { name = "stm-firehose"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "Conduits and STM operations for fire hoses.";
      description = "A fire hose is a component in a message passing system that let clients tap into the message flow. This module provides low level (built on STM channels) and high level (based on conduits) building blocks. It should work with a fixed amount of memory, and has non blocking write operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
          (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      tests = {
        "test-stm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm-firehose" or (errorHandler.buildDepError "stm-firehose"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }