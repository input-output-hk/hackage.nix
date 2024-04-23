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
      identifier = { name = "buildbox-tools"; version = "1.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier";
      homepage = "http://code.ouroborus.net/buildbox";
      url = "";
      synopsis = "Tools for working with buildbox benchmark result files.";
      description = "Tools for working with buildbox benchmark result files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "buildbox-results" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buildbox" or (errorHandler.buildDepError "buildbox"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
          ];
          buildable = true;
        };
      };
    };
  }