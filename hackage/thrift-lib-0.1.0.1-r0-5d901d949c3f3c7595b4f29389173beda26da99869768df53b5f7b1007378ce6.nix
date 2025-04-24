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
    flags = { tests_use_ipv4 = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "thrift-lib"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Facebook, All Rights Reserved";
      maintainer = "hsthrift-team@fb.com";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebookincubator/hsthrift";
      url = "";
      synopsis = "Libraries for Haskell Thrift";
      description = "Support for building client and server applications that\ncommunicate using the Thrift protocols.\n\nNOTE: for build instructions and documentation, see\n<https://github.com/facebookincubator/hsthrift>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
          (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
        ];
        buildable = true;
      };
      sublibs = {
        "test-helpers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
        "test-lib" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
      };
      tests = {
        "channel" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."thrift-lib".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-lib:test-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
        "socket-channel" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."thrift-lib".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-lib:test-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
        "client" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."thrift-lib".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-lib:test-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
        "binary-parser" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."thrift-lib".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-lib:test-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
        "json-parsing" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."thrift-lib".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-lib:test-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
        "json-num" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."thrift-lib".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-lib:test-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
        "json-null" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."thrift-lib".components.sublibs.test-helpers or (errorHandler.buildDepError "thrift-lib:test-helpers"))
            (hsPkgs."thrift-lib".components.sublibs.test-lib or (errorHandler.buildDepError "thrift-lib:test-lib"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.thrift-compiler.components.exes.thrift-compiler or (pkgs.pkgsBuildBuild.thrift-compiler or (errorHandler.buildToolDepError "thrift-compiler:thrift-compiler")))
          ];
          buildable = true;
        };
      };
    };
  }