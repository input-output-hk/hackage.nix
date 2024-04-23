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
      specVersion = "1.0";
      identifier = { name = "BASIC"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Embedded BASIC";
      description = "A simplified version of the original BASIC embedded in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."llvm" or (errorHandler.buildDepError "llvm"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
        ];
        buildable = true;
      };
    };
  }