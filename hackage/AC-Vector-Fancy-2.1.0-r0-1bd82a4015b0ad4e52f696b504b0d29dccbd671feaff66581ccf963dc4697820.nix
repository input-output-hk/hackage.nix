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
      identifier = { name = "AC-Vector-Fancy"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Fancy type system stuff for AC-Vector";
      description = "Adds various type system tricks to AC-Vector.\n(Requires several language extensions, including\ntype families.)\nNow includes bounding box classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."AC-Angle" or (errorHandler.buildDepError "AC-Angle"))
          (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
          ];
        buildable = true;
        };
      };
    }