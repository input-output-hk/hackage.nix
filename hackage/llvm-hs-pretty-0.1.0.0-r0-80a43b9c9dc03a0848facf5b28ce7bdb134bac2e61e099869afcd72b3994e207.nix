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
      identifier = { name = "llvm-hs-pretty"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/llvm-hs/llvm-hs-pretty";
      url = "";
      synopsis = "Pretty printer for LLVM IR.";
      description = "Pretty printer for LLVM IR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."llvm-hs-pretty" or (errorHandler.buildDepError "llvm-hs-pretty"))
            (hsPkgs."llvm-hs" or (errorHandler.buildDepError "llvm-hs"))
            (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
            ];
          buildable = true;
          };
        };
      };
    }