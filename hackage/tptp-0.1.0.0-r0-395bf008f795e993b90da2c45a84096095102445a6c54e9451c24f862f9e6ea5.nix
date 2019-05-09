{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "tptp"; version = "0.1.0.0"; };
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
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.scientific)
          (hsPkgs.prettyprinter)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
        };
      exes = {
        "parser" = { depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.tptp) ]; };
        "parse-tptp-library" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.tptp)
            ];
          };
        };
      tests = {
        "quickcheck-spec" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.scientific)
            (hsPkgs.prettyprinter)
            (hsPkgs.generic-random)
            (hsPkgs.QuickCheck)
            (hsPkgs.tptp)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2") (hsPkgs.bifunctors);
          };
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.Cabal)
            (hsPkgs.extra)
            (hsPkgs.directory)
            (hsPkgs.tptp)
            ];
          };
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) (hsPkgs.doctest) ];
          };
        };
      };
    }