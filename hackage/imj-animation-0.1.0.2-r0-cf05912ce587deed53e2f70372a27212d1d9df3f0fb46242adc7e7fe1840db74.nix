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
      identifier = { name = "imj-animation"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 - 2018 Olivier Sohn";
      maintainer = "olivier.sohn@gmail.com";
      author = "Olivier Sohn";
      homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-animation/README.md";
      url = "";
      synopsis = "Animation Framework";
      description = "Framework to create event-based, physics-based, composed, generative animations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."imj-base" or (errorHandler.buildDepError "imj-base"))
          (hsPkgs."imj-prelude" or (errorHandler.buildDepError "imj-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "imj-animation-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }