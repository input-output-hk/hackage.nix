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
    flags = { withconstraints = true; withdatakinds = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "smtlib2"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "guenther@forsyte.at";
      author = "Henning Günther <guenther@forsyte.at>";
      homepage = "";
      url = "";
      synopsis = "A type-safe interface to communicate with an SMT solver.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."atto-lisp" or (errorHandler.buildDepError "atto-lisp"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ] ++ (pkgs.lib).optional (flags.withconstraints) (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"));
        buildable = true;
        };
      };
    }