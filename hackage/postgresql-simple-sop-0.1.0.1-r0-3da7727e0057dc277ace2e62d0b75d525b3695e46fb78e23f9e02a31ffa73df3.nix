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
      identifier = { name = "postgresql-simple-sop"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomn@openbrain.org";
      author = "Tom Nielsen";
      homepage = "https://github.com/openbrainsrc/postgresql-simple-sop";
      url = "";
      synopsis = "Generic functions for postgresql-simple";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          ];
        buildable = true;
        };
      };
    }