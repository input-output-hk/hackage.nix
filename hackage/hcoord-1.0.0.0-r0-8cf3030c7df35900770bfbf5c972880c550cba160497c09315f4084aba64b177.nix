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
      identifier = { name = "hcoord"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "copyleft";
      maintainer = "dfrancesconi12@gmail.com";
      author = "Daniele Francesconi";
      homepage = "https://github.com/danfran/hcoord#readme";
      url = "";
      synopsis = "Easily convert between latitude/longitude, UTM and OSGB.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
        ];
        buildable = true;
      };
      exes = {
        "hcoord-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hcoord" or (errorHandler.buildDepError "hcoord"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hcoord-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hcoord" or (errorHandler.buildDepError "hcoord"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
          buildable = true;
        };
      };
    };
  }