{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "funsat"; version = "0.4"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "";
      url = "";
      synopsis = "A modern DPLL-style SAT solver";
      description = "Funsat is a native Haskell SAT solver that uses modern techniques for\nsolving SAT instances.  Current features include two-watched literals,\nconflict-directed learning, non-chronological backtracking, a VSIDS-like\ndynamic variable ordering, and restarts.  It is possible to use funsat\nboth as a library and as a standalone executable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
          (hsPkgs."bitset" or ((hsPkgs.pkgs-errors).buildDepError "bitset"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          ];
        buildable = true;
        };
      exes = {
        "funsat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
            (hsPkgs."bitset" or ((hsPkgs.pkgs-errors).buildDepError "bitset"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }