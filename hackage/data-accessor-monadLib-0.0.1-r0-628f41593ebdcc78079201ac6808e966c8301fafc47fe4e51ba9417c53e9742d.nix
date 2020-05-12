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
      specVersion = "1.2";
      identifier = { name = "data-accessor-monadLib"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "";
      url = "";
      synopsis = "Accessor functions for monadLib's monads";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          ];
        buildable = true;
        };
      };
    }