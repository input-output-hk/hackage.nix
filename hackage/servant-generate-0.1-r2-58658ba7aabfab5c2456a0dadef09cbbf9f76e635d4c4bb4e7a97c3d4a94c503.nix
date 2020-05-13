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
      identifier = { name = "servant-generate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "https://github.com/alpmestan/servant-generate";
      url = "";
      synopsis = "Utilities for generating mock server implementations";
      description = "Utilities for generating mock server implementations\n\nSee the documentation of the @Servant.Server.Generate@ module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          ];
        buildable = true;
        };
      };
    }