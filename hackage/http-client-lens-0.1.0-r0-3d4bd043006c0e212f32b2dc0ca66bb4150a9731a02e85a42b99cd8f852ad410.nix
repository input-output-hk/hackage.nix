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
      specVersion = "1.6";
      identifier = { name = "http-client-lens"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Rein Henrichs";
      maintainer = "Rein Henrichs <reinh@gmail.com>";
      author = "Rein Henrichs";
      homepage = "http://github.com/reinh/http-client-lens";
      url = "";
      synopsis = "Optics for http-client";
      description = "Optics for <http://hackage.haskell.org/package/http-client http-client>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }