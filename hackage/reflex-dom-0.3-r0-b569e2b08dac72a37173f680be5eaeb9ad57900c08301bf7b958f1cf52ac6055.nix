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
      specVersion = "1.9.2";
      identifier = { name = "reflex-dom"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Web Apps with Reflex";
      description = "Reflex-DOM is a Functional Reactive web framework based on the Reflex FRP engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dependent-sum-template" or (errorHandler.buildDepError "dependent-sum-template"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            ]
          else [
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
            (hsPkgs."webkitgtk3-javascriptcore" or (errorHandler.buildDepError "webkitgtk3-javascriptcore"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix")));
        buildable = true;
        };
      };
    }