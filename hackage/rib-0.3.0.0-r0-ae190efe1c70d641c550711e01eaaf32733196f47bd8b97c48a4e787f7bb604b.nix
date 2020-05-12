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
      specVersion = "2.2";
      identifier = { name = "rib"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/srid/rib#readme";
      url = "";
      synopsis = "Static site generator using Shake";
      description = "Haskell library for writing your own static site generator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          (hsPkgs."pandoc-include-code" or (errorHandler.buildDepError "pandoc-include-code"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          ];
        buildable = true;
        };
      };
    }