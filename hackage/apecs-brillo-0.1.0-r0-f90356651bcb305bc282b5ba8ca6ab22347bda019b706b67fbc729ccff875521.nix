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
      identifier = { name = "apecs-brillo"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Jonas Carpay, Execute";
      maintainer = "execute@erisws.com";
      author = "Execute";
      homepage = "https://github.com/fl215/apecs-brillo";
      url = "";
      synopsis = "Simple brillo renderer for apecs";
      description = "apecs-gloss but instead it's for brillo.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."apecs" or (errorHandler.buildDepError "apecs"))
          (hsPkgs."apecs-physics" or (errorHandler.buildDepError "apecs-physics"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
        ];
        buildable = true;
      };
    };
  }