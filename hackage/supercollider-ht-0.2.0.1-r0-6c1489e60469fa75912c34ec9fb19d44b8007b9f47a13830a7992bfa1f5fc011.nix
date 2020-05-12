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
    flags = { splitbase = true; buildexamples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "supercollider-ht"; version = "0.2.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Henning Thielemann, 2008-2013";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskell SuperCollider utilities";
      description = "Some additional modules I use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* common play routines\n\n* example effects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."opensoundcontrol-ht" or (errorHandler.buildDepError "opensoundcontrol-ht"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "timing-example" = {
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }