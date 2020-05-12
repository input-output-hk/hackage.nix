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
      specVersion = "1.2";
      identifier = { name = "Peano"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "0slemi0@gmail.com";
      author = "Andras Slemmer";
      homepage = "";
      url = "";
      synopsis = "simple Peano numbers";
      description = "Peano numbers without extra fluff, mainly for type level computations in promoted form";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }