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
      identifier = { name = "comonad-random"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "Comonadic interface for random values";
      description = "Comonadic interface for random values";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."category-extras" or (errorHandler.buildDepError "category-extras"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }