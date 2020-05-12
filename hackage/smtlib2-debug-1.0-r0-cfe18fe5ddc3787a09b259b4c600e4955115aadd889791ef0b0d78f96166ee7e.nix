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
      identifier = { name = "smtlib2-debug"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "guenther@forsyte.at";
      author = "Henning Günther <guenther@forsyte.at>";
      homepage = "";
      url = "";
      synopsis = "Dump the communication with an SMT solver for debugging purposes.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."smtlib2" or (errorHandler.buildDepError "smtlib2"))
          (hsPkgs."smtlib2-pipe" or (errorHandler.buildDepError "smtlib2-pipe"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."atto-lisp" or (errorHandler.buildDepError "atto-lisp"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          ];
        buildable = true;
        };
      };
    }