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
      specVersion = "1.12";
      identifier = { name = "SmithNormalForm"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Brian Hwang";
      maintainer = "bhwang@math.cornell.edu";
      author = "Brian Hwang";
      homepage = "https://notabug.org/bwh/SmithNormalForm";
      url = "";
      synopsis = "A lightweight Haskell implementation of Smith normal form over the integers.";
      description = "This package contains an implementation of Smith normal form for arbitrary matrices over the integers. In particular, it does not assume that the matrix is invertible or square.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }