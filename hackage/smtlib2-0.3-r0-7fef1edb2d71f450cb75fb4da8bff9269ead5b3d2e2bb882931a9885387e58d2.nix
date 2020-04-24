{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { withconstraints = true; withdatakinds = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "smtlib2"; version = "0.3"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."atto-lisp" or ((hsPkgs.pkgs-errors).buildDepError "atto-lisp"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ] ++ (pkgs.lib).optional (flags.withconstraints) (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"));
        buildable = true;
        };
      };
    }