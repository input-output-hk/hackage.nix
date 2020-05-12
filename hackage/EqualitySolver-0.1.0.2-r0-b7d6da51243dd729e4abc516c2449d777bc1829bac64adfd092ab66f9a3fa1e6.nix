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
      specVersion = "1.8";
      identifier = { name = "EqualitySolver"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dillonhuff@gmail.com";
      author = "Dillon Huff";
      homepage = "";
      url = "";
      synopsis = "A theory solver for conjunctions of literals in the theory of uninterpreted functions with equality";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."union-find-array" or (errorHandler.buildDepError "union-find-array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }