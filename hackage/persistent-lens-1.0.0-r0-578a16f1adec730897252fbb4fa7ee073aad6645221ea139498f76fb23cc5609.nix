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
      specVersion = "1.12";
      identifier = { name = "persistent-lens"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2022 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/persistent-lens#readme";
      url = "";
      synopsis = "lens helpers for persistent.";
      description = "adds an isomorphism from entity to tuple and field lenses on entity.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
        ];
        buildable = true;
      };
    };
  }