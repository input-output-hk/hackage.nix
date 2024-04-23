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
      specVersion = "1.2";
      identifier = { name = "maid"; version = "2014.8.31"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/maid";
      url = "";
      synopsis = "A simple static web server";
      description = "Serve files from the current path";
      buildType = "Simple";
    };
    components = {
      exes = {
        "maid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."air" or (errorHandler.buildDepError "air"))
            (hsPkgs."air-th" or (errorHandler.buildDepError "air-th"))
            (hsPkgs."hack2" or (errorHandler.buildDepError "hack2"))
            (hsPkgs."hack2-contrib" or (errorHandler.buildDepError "hack2-contrib"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hack2-handler-snap-server" or (errorHandler.buildDepError "hack2-handler-snap-server"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moe" or (errorHandler.buildDepError "moe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }