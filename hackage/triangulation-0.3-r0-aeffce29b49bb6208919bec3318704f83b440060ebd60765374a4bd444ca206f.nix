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
      identifier = { name = "triangulation"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@googlemail.com";
      author = "Joern Dinkla, Tillmann Vogt";
      homepage = "http://www.dinkla.net/";
      url = "";
      synopsis = "triangulation of polygons";
      description = "An implementation of a simple triangulation algorithm for polygons without crossings (holes are possible). The code is explained her: <www.dinkla.net/download/GeomAlgHaskell.pdf>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."collada-types" or (errorHandler.buildDepError "collada-types"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
        ];
        buildable = true;
      };
    };
  }