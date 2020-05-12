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
      identifier = { name = "IOR"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomac `at` pacific `dot` net `dot` au";
      author = "Ivan Tomac";
      homepage = "";
      url = "";
      synopsis = "Region based resource management for the IO monad.";
      description = "IOR monad is a wrapper around IO that allows region based\nresource management.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }