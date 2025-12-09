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
      specVersion = "3.0";
      identifier = { name = "baseless"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2025 Jappie Klooster";
      maintainer = "hi@jappie.me";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/baseless#readme";
      url = "";
      synopsis = "baseless claims";
      description = "See if we can make a library without a base, a baseless claim";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
        ];
        buildable = true;
      };
      exes = {
        "exe" = {
          depends = [
            (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
            (hsPkgs."baseless" or (errorHandler.buildDepError "baseless"))
          ];
          buildable = true;
        };
      };
    };
  }