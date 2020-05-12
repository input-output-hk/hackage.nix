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
      identifier = { name = "servant-flatten"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alp Mestanogullari, Julian Arni";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "https://github.com/alpmestan/servant-flatten";
      url = "";
      synopsis = "Utilities for flattening servant API types";
      description = "Utilities for flattening servant API types\n\nSee the documentation of @'Servant.API.Flatten.flatten'@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          ];
        buildable = true;
        };
      };
    }