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
      identifier = { name = "ghci-websockets"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 Jann Mueller";
      maintainer = "Jann Müller (j.mueller.11@alumni.ucl.ac.uk)";
      author = "Jann Müller";
      homepage = "https://github.com/j-mueller/ghci-websockets";
      url = "";
      synopsis = "A websocket server that survives GHCi reloads";
      description = "A websocket server that survives GHCi reloads - use your browser to visualise results from the REPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."foreign-store" or (errorHandler.buildDepError "foreign-store"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }