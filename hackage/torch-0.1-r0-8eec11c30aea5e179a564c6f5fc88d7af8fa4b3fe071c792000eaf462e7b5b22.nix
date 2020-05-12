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
      specVersion = "1.2.3";
      identifier = { name = "torch"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nonowarn@gmail.com";
      author = "Yusaku Hashimoto ";
      homepage = "http://patch-tag.com/repo/torch/home";
      url = "";
      synopsis = "Simple unit test library (or framework)";
      description = "Unit test writing and running with writer monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }