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
      identifier = { name = "acme-microwave"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Joe Quinn";
      maintainer = "headprogrammingczar@gmail.com";
      author = "Joe Quinn";
      homepage = "";
      url = "";
      synopsis = "The eighth wonder of the world, kitchen math!";
      description = "Have you ever wondered why, when using a microwave, pressing \"60\" is the same as pressing \"100\"? Well wonder no longer! I, through epic trials and hardships, have tamed the vexacious wiles of that most enigmatic appliance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }