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
      specVersion = "3.6";
      identifier = { name = "thrift-compiler"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Facebook, All Rights Reserved";
      maintainer = "hsthrift-team@fb.com";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebookincubator/hsthrift";
      url = "";
      synopsis = "A compiler from the Thrift Interface Definition Language (IDL) to Haskell";
      description = "A compiler from the Thrift Interface Definition Language (IDL) to Haskell.\n\nNOTE: for build instructions and documentation, see\n<https://github.com/facebookincubator/hsthrift>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."fb-util" or (errorHandler.buildDepError "fb-util"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-names" or (errorHandler.buildDepError "haskell-names"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      exes = {
        "thrift-compiler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."thrift-compiler" or (errorHandler.buildDepError "thrift-compiler"))
          ];
          buildable = true;
        };
      };
      tests = {
        "thrift-compiler-tests" = {
          depends = [
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fb-stubs" or (errorHandler.buildDepError "fb-stubs"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thrift-compiler" or (errorHandler.buildDepError "thrift-compiler"))
          ];
          buildable = true;
        };
      };
    };
  }