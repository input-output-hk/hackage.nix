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
      identifier = { name = "vector-sized"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Joe Hermaszewski";
      maintainer = "whats.our.vector.victor@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "http://github.com/expipiplus1/vector-sized#readme";
      url = "";
      synopsis = "Size tagged vectors";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
        ];
        buildable = true;
      };
    };
  }