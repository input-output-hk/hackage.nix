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
    flags = { opt = false; tests_use_ipv4 = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "thrift-http"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Facebook, All Rights Reserved";
      maintainer = "hsthrift-team@fb.com";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebookincubator/hsthrift";
      url = "";
      synopsis = "Support for Thrift-over-HTTP server and client";
      description = "Support for building servers and clients that communicate\nusing Thrift over an HTTP transport. Uses WAI and Warp as\nthe server-side HTTP implementation, and http-client for\nthe client-side implementation.\n\nThis transport is only compatible with itself. In particular, it\nis *not* compatible with fbthrift or apache-thrift clients and\nservers.\n\nNOTE: for build instructions and documentation, see\n<https://github.com/facebookincubator/hsthrift>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
          (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
      sublibs = {
        "test-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."thrift-http".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-http:test-lib"))
            (hsPkgs."thrift-http" or (errorHandler.buildDepError "thrift-http"))
          ];
          buildable = true;
        };
      };
    };
  }