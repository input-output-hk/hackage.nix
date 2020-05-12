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
    flags = { test = false; };
    package = {
      specVersion = "1.6.0";
      identifier = { name = "dedukti"; version = "1.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "© 2009 CNRS - École Polytechnique - INRIA";
      maintainer = "Mathieu Boespflug <mboes@lix.polytechnique.fr>";
      author = "Mathieu Boespflug";
      homepage = "http://www.lix.polytechnique.fr/dedukti";
      url = "";
      synopsis = "A type-checker for the λΠ-modulo calculus.";
      description = "Dedukti is a proof checker for the λΠ-modulo calculus, a\ndependently typed λ-calculus with the addition of typed rewrite\nrules, capable of expressing proofs in Deduction Modulo [1].\n\n[1] G. Dowek, Th. Hardin, C. Kirchner, Theorem proving modulo,\n/Journal of Automated Reasoning/, 31, 2003, pp. 33-72.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ];
        buildable = true;
        };
      exes = {
        "dedukti" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-src-exts-qq" or (errorHandler.buildDepError "haskell-src-exts-qq"))
            (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
            (hsPkgs."hmk" or (errorHandler.buildDepError "hmk"))
            (hsPkgs."stringtable-atom" or (errorHandler.buildDepError "stringtable-atom"))
            ];
          buildable = true;
          };
        "dedukti-tests" = {
          depends = (pkgs.lib).optionals (!(!flags.test)) [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }