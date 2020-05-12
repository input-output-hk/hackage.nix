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
      identifier = { name = "canteven-listen-http"; version = "1.0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "eglassercamp@sumall.com";
      author = "Ethan Glasser-Camp";
      homepage = "";
      url = "";
      synopsis = "data types to describe HTTP services";
      description = "A few datatypes useful for describing what ports an HTTP service listens on.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }