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
      identifier = { name = "haskelldb-th"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Justin Bailey ";
      maintainer = "jgbailey@gmail.com";
      author = "\"Justin Bailey\" <jgbailey@gmail.com>";
      homepage = "http://trac.haskell.org/haskelldb-th";
      url = "";
      synopsis = "Template Haskell utilities for HaskellDB.";
      description = "Utility functions that make defining tables, fields, and queries in\nHaskellDB simpler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskelldb" or (errorHandler.buildDepError "haskelldb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }