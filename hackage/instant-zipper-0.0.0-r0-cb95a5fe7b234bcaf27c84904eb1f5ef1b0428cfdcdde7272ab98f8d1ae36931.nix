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
      identifier = { name = "instant-zipper"; version = "0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "B.Schuur@students.uu.nl, R.Koot@students.uu.nl";
      author = "Bram Schuur, Ruud Koot";
      homepage = "";
      url = "";
      synopsis = "Heterogenous Zipper in Instant Generics";
      description = "This package contains a heterogenous Zipper and 2\nexamples of how to use it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."instant-generics" or (errorHandler.buildDepError "instant-generics"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }