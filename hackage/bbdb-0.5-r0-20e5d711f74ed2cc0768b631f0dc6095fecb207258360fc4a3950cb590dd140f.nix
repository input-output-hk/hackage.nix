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
      specVersion = "1.4";
      identifier = { name = "bbdb"; version = "0.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "nadine.and.henry@pobox.com";
      author = "Henry Laxen";
      homepage = "http://www.nadineloveshenry.com/haskell/database-bbdb.html";
      url = "";
      synopsis = "Ability to read, write, and examine BBDB files";
      description = "BBDB (http://sourceforge.bbdb.net) is a contact management utility\nthat can be used with emacs.  It stores its data internally as a lisp\nexpression.  This module parses the lisp and provides some convenience\nfunctions to get at and manipulate the data all from within Haskell.\nSee the hackage docs for usage and examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }