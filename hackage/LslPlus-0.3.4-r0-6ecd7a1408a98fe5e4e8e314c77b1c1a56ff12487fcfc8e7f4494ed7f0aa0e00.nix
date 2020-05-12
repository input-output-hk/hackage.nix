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
      specVersion = "1.5";
      identifier = { name = "LslPlus"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Robert Greayer 2008.";
      maintainer = "Robert Greayer <robgreayer@yahoo.com>";
      author = "Robert Greayer <robgreayer@yahoo.com>";
      homepage = "http:/lslplus.sourceforge.net/";
      url = "";
      synopsis = "An execution and testing framework for the Linden Scripting Language (LSL)";
      description = "Provides a framework for executing Linden Scripting Language scripts offline,\ni.e. outside a Second Life&#xAE; simulator.  The product is the LslPlus executable,\nwhich works in cooperation with the LSL Plus Eclipse plugin (the executable is not\nmuch use standalone).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LslPlus" = {
          depends = [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }