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
      specVersion = "3.4";
      identifier = { name = "HaskellForMaths"; version = "0.4.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskellformaths-at-gmail-dot-com";
      author = "David Amos";
      homepage = "http://haskellformaths.blogspot.com/";
      url = "";
      synopsis = "Combinatorics, group theory, commutative algebra, non-commutative algebra";
      description = "A library of maths code in the areas of combinatorics, group theory, commutative algebra, and non-commutative algebra. The library is mainly intended as an educational resource, but does have efficient implementations of several fundamental algorithms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }