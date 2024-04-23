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
      identifier = { name = "mcaeson"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/githubuser/mcaeson#readme";
      url = "";
      synopsis = "An Aeson parsing toolkit";
      description = "Please see the README on GitHub at <https://github.com/mcaeson/mcaeson#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "mcaeson-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mcaeson" or (errorHandler.buildDepError "mcaeson"))
          ];
          buildable = true;
        };
      };
      tests = {
        "mcaeson-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mcaeson" or (errorHandler.buildDepError "mcaeson"))
          ];
          buildable = true;
        };
      };
    };
  }