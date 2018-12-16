{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "smtlib2-pipe";
        version = "1.0";
      };
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
          (hsPkgs.smtlib2)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.atto-lisp)
          (hsPkgs.attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.dependent-sum)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test-smtlib2-pipe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.smtlib2)
            (hsPkgs.smtlib2-pipe)
            (hsPkgs.smtlib2-quickcheck)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-test-quickcheck)
          ];
        };
      };
    };
  }