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
      identifier = { name = "maid"; version = "2009.12.20"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/maid/tree/master";
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
            (hsPkgs."loli" or (errorHandler.buildDepError "loli"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hack-handler-happstack" or (errorHandler.buildDepError "hack-handler-happstack"))
            (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
            ];
          buildable = true;
          };
        };
      };
    }