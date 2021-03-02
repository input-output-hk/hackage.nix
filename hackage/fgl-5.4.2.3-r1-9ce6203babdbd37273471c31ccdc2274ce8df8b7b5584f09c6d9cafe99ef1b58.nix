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
      identifier = { name = "fgl"; version = "5.4.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com, tomberek@gmail.com";
      author = "Martin Erwig, Ivan Lazar Miljenovic";
      homepage = "http://web.engr.oregonstate.edu/~erwig/fgl/haskell";
      url = "";
      synopsis = "Martin Erwig's Functional Graph Library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }