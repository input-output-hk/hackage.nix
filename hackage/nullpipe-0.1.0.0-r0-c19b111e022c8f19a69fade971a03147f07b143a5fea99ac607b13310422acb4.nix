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
      identifier = { name = "nullpipe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "AllRightsReserved";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "https://github.com/mwotton/nullpipe#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
        ];
        buildable = true;
      };
      tests = {
        "nullpipe-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nullpipe" or (errorHandler.buildDepError "nullpipe"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
          buildable = true;
        };
      };
    };
  }