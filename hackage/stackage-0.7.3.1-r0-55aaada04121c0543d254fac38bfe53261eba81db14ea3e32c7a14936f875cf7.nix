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
      identifier = { name = "stackage"; version = "0.7.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://www.stackage.org/";
      url = "";
      synopsis = "Dummy package forcing installation of other Stackage packages";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stackage-cli" or (errorHandler.buildDepError "stackage-cli"))
          (hsPkgs."stackage-update" or (errorHandler.buildDepError "stackage-update"))
          (hsPkgs."stackage-upload" or (errorHandler.buildDepError "stackage-upload"))
          (hsPkgs."stackage-install" or (errorHandler.buildDepError "stackage-install"))
          (hsPkgs."stackage-build-plan" or (errorHandler.buildDepError "stackage-build-plan"))
          ];
        buildable = true;
        };
      };
    }