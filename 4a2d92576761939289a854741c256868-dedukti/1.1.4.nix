{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "dedukti";
        version = "1.1.4";
      };
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
      "dedukti" = {
        depends  = [
          (hsPkgs.time)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "dedukti" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.wl-pprint)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haskell-src-exts-qq)
            (hsPkgs.Stream)
            (hsPkgs.hmk)
            (hsPkgs.stringtable-atom)
          ];
        };
        "dedukti-tests" = {
          depends  = pkgs.lib.optionals (!(!_flags.test)) [
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }