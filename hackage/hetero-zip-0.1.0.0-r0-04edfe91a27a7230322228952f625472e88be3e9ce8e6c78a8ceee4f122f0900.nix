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
      identifier = { name = "hetero-zip"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Phil Hazelden, 2024";
      maintainer = "philip.hazelden@gmail.com";
      author = "Phil Hazelden";
      homepage = "";
      url = "";
      synopsis = "Zip lists with Traversables";
      description = "A `Traversable`'s elements can be visited one at a time, and updated\nin-place. That means we can visit them at the same time as we walk along a\nlist, and use the values in the list to update the values in the\n`Traversable`. This library does just that.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
        ];
        buildable = true;
      };
    };
  }