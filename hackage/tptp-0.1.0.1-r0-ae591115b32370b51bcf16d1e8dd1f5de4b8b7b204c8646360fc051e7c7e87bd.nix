{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "tptp"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "evgeny.kotelnikov@gmail.com";
      author = "Evgenii Kotelnikov";
      homepage = "https://github.com/aztek/tptp";
      url = "";
      synopsis = "A parser and a pretty printer for the TPTP language";
      description = "<http://www.tptp.org TPTP> (Thousands of Problems for Theorem Provers)\nis the standard language of problems, proofs, and models, used by automated\ntheorem provers.\n\nThis library provides definitions of data types, a pretty printer and an\n<http://hackage.haskell.org/package/attoparsec attoparsec> parser for\n(currently, a subset of) the TPTP language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      exes = {
        "parser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tptp" or ((hsPkgs.pkgs-errors).buildDepError "tptp"))
            ];
          buildable = true;
          };
        "parse-tptp-library" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."tptp" or ((hsPkgs.pkgs-errors).buildDepError "tptp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quickcheck-spec" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."generic-random" or ((hsPkgs.pkgs-errors).buildDepError "generic-random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tptp" or ((hsPkgs.pkgs-errors).buildDepError "tptp"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2") (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"));
          buildable = true;
          };
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."tptp" or ((hsPkgs.pkgs-errors).buildDepError "tptp"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "8.0.0" && (compiler.isGhc && (compiler.version).lt "8.1.0")
            then false
            else true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "8.4"
            then false
            else true;
          };
        };
      };
    }