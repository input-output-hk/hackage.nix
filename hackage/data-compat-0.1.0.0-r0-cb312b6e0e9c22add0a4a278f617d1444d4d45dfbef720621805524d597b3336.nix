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
      specVersion = "2.2";
      identifier = { name = "data-compat"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Travis Whitaker 2019";
      maintainer = "pi.boy.travis@gmail.com";
      author = "Travis Whitaker";
      homepage = "https://github.com/TravisWhitaker/data-compat";
      url = "";
      synopsis = "Define Backwards Compatibility Schemes for Arbitrary Data";
      description = "Define Backwards Compatibility Schemes for Arbitrary Data";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
        ];
        buildable = true;
      };
    };
  }