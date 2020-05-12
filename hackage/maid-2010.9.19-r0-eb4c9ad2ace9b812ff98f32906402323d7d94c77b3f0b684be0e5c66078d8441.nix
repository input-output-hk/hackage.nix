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
      identifier = { name = "maid"; version = "2010.9.19"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/maid";
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
            (hsPkgs."mps" or (errorHandler.buildDepError "mps"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hack-handler-happstack" or (errorHandler.buildDepError "hack-handler-happstack"))
            (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moe" or (errorHandler.buildDepError "moe"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }