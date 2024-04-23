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
      specVersion = "1.0";
      identifier = { name = "procrastinating-structure"; version = "1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "Pure structures that can be incrementally created\nin impure code";
      description = "This package provides a type class for\nincrementally creating pure structures in impure\ncode. Also included is a queue with a pure front\nand an impure back.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."procrastinating-variable" or (errorHandler.buildDepError "procrastinating-variable"))
        ];
        buildable = true;
      };
    };
  }