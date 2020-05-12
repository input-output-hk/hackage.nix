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
      identifier = { name = "star-to-star-contra"; version = "1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "nicolas.frisby@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "contravariant instances for * -> * types and operators.";
      description = "Contravariant instances for the fundamental * -> * types and operators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."star-to-star" or (errorHandler.buildDepError "star-to-star"))
          ];
        buildable = true;
        };
      };
    }