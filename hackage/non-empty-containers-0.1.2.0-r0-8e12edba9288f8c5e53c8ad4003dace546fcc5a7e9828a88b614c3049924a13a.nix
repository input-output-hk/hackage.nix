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
      specVersion = "2.0";
      identifier = { name = "non-empty-containers"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/non-empty-containers#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/andrewthad/non-empty-containers#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }