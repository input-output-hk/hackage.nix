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
      identifier = { name = "extended-containers-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 konsumlamm";
      maintainer = "konsumlamm@gmail.com";
      author = "konsumlamm";
      homepage = "https://github.com/konsumlamm/extended-containers-lens#readme";
      url = "";
      synopsis = "lens instances for extended-containers";
      description = "This package contains orphan instances of lens classes for the container types from extended-containers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extended-containers" or (errorHandler.buildDepError "extended-containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
    };
  }