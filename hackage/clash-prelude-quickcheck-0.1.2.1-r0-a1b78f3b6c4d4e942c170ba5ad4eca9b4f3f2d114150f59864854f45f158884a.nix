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
      identifier = { name = "clash-prelude-quickcheck"; version = "0.1.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ericson2314@Yahoo.com";
      author = "John Ericson";
      homepage = "";
      url = "";
      synopsis = "QuickCheck instances for various types in the CλaSH Prelude";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          ];
        buildable = true;
        };
      };
    }