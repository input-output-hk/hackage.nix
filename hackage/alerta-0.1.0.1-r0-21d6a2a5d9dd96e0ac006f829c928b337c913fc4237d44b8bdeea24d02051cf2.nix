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
      identifier = { name = "alerta"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Mark Hopkins";
      maintainer = "markjohnhopkins@gmail.com";
      author = "Mark Hopkins";
      homepage = "https://github.com/mjhopkins/alerta-client";
      url = "";
      synopsis = "Bindings to the alerta REST API";
      description = "<http://alerta.io Alerta> is an alert monitoring tool developed by the\n<https://www.theguardian.com Guardian> newspaper\n\nThis package supplies bindings to the alerta REST API so that it can be used\nfrom Haskell.\n\nBuilt with <http://hackage.haskell.org/package/servant Servant>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }