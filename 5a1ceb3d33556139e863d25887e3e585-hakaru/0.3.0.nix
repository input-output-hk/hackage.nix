{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      tracedisintegrate = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16";
      identifier = {
        name = "hakaru";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppaml@indiana.edu";
      author = "The Hakaru Team";
      homepage = "http://indiana.edu/~ppaml/";
      url = "";
      synopsis = "A probabilistic programming language";
      description = "Hakaru is a simply-typed probabilistic programming language, designed\nfor easy specification of probabilistic models, and inference algorithms.";
      buildType = "Simple";
    };
    components = {
      "hakaru" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.ghc-prim)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.pretty)
          (hsPkgs.logfloat)
          (hsPkgs.math-functions)
          (hsPkgs.vector)
          (hsPkgs.indentation-parsec)
          (hsPkgs.ansi-terminal)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.mwc-random)
          (hsPkgs.directory)
          (hsPkgs.integration)
          (hsPkgs.primitive)
          (hsPkgs.process)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "hakaru" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.hakaru)
          ];
        };
        "compile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.hakaru)
          ];
        };
        "simplify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.optparse-applicative)
            (hsPkgs.hakaru)
          ];
        };
        "density" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.hakaru)
          ];
        };
        "disintegrate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.hakaru)
          ];
        };
        "pretty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.hakaru)
          ];
        };
        "momiji" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hakaru)
          ];
        };
        "normalize" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.hakaru)
          ];
        };
        "hkc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.hakaru)
            (hsPkgs.semigroups)
          ];
        };
        "mh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.hakaru)
          ];
        };
      };
      tests = {
        "system-testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.ghc-prim)
            (hsPkgs.indentation-parsec)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.semigroups)
            (hsPkgs.logfloat)
            (hsPkgs.parsec)
            (hsPkgs.primitive)
            (hsPkgs.pretty)
            (hsPkgs.mwc-random)
            (hsPkgs.math-functions)
            (hsPkgs.integration)
            (hsPkgs.ansi-terminal)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.vector)
            (hsPkgs.text)
          ];
        };
      };
    };
  }