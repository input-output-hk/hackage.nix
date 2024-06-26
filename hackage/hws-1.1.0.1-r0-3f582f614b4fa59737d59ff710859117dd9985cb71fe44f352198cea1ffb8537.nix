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
      identifier = { name = "hws"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "newsham@lava.net";
      author = "Simon Marlow";
      homepage = "";
      url = "";
      synopsis = "Simple Haskell Web Server";
      description = "The original Haskell Web Server, as described in the\npaper \"Developing a high-performance web server in\nConcurrent Haskell\" (JFP 12(4+5):359--374, July 2002).\nI'm making the package available for archaeological and\nillustrative reasons; while this certainly can be used to\nserve simple static content, there are other much more\nfully-featured web servers and frameworks on Hackage.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }