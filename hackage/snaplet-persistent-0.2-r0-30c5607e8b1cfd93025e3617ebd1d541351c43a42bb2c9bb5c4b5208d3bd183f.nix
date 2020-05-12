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
      identifier = { name = "snaplet-persistent"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozataman@gmail.com, mightybyte@gmail.com";
      author = "Soostone Inc. Ozgun Ataman, Doug Beardsley";
      homepage = "https://github.com/mightybyte/snaplet-persistent";
      url = "";
      synopsis = "persistent snaplet for the Snap Framework";
      description = "Snaplet support for using the Postgresql database\nwith a Snap Framework application via the persistent\npackage.  It also includes an authentication backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."resource-pool-catchio" or (errorHandler.buildDepError "resource-pool-catchio"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }