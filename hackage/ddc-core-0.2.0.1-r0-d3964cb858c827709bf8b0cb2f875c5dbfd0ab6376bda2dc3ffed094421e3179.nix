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
      specVersion = "1.6";
      identifier = { name = "ddc-core"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciple Core language and type checker.";
      description = "Disciple Core is an explicitly typed language based on System-F2, intended\nas an intermediate representation for a compiler. In addition to the features of\nSystem-F2 it supports region, effect and closure typing. Evaluation order is\nleft-to-right call-by-value by default, but explicit lazy evaluation is also supported.\nThere is also a capability system to track whether objects are mutable or constant,\nand to ensure that computations that perform visible side effects are not suspended with\nlazy evaluation.\nSee the @ddci-core@ package for a user-facing interpreter.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ddc-base" or (errorHandler.buildDepError "ddc-base"))
        ];
        buildable = true;
      };
    };
  }