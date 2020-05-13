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
      specVersion = "1.8";
      identifier = { name = "rest-happstack"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Rest driver for Happstack.";
      description = "Rest driver for Happstack.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."rest-core" or (errorHandler.buildDepError "rest-core"))
          (hsPkgs."rest-gen" or (errorHandler.buildDepError "rest-gen"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }