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
      identifier = { name = "ispositive"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christian Dietrich <stettberger@dokucode.de>";
      author = "Christian Dietrich";
      homepage = "";
      url = "";
      synopsis = "Positive integers test.";
      description = "Tests wheter an Integer is positive.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }