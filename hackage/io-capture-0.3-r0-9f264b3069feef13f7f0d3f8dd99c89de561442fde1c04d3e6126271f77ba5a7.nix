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
      specVersion = "0";
      identifier = { name = "io-capture"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nonowarn@gmail.com";
      author = "Yusaku Hashimoto";
      homepage = "";
      url = "";
      synopsis = "capture IO action's stdout and stderr";
      description = "capture IO action's stdout and stderr";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }