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
      identifier = { name = "uniform-pair"; version = "0.1.12"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/uniform-pair/";
      url = "";
      synopsis = "Uniform pairs with class instances";
      description = "Uniform pairs with class instances";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prelude-extras" or (errorHandler.buildDepError "prelude-extras"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }