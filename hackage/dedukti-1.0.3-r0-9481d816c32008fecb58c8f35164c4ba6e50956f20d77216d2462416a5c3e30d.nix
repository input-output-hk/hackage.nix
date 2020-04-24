{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "dedukti"; version = "1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "© 2009 CNRS - École Polytechnique - INRIA";
      maintainer = "Mathieu Boespflug <mboes@lix.polytechnique.fr>";
      author = "Mathieu Boespflug";
      homepage = "http://www.lix.polytechnique.fr/~mboes/src/dedukti.git";
      url = "";
      synopsis = "A type-checker for the λΠ-modulo calculus.";
      description = "Dedukti is a proof checker for the λΠ-modulo calculus, a\ndependently typed λ-calculus with the addition of typed rewrite\nrules, capable of expressing proofs in Deduction Modulo [1].\n\n[1] G. Dowek, Th. Hardin, C. Kirchner, Theorem proving modulo,\n/Journal of Automated Reasoning/, 31, 2003, pp. 33-72.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "dedukti" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."Stream" or ((hsPkgs.pkgs-errors).buildDepError "Stream"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hmk" or ((hsPkgs.pkgs-errors).buildDepError "hmk"))
            ];
          buildable = true;
          };
        };
      };
    }