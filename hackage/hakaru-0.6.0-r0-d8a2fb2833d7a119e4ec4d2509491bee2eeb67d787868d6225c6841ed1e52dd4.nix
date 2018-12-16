{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      tracedisintegrate = false;
    };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "hakaru";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppaml@indiana.edu";
      author = "The Hakaru Team";
      homepage = "http://hakaru-dev.github.io/";
      url = "";
      synopsis = "A probabilistic programming language";
      description = "Hakaru is a simply-typed probabilistic programming language, designed\nfor easy specification of probabilistic models, and inference algorithms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.ghc-prim)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.pretty)
          (hsPkgs.logfloat)
          (hsPkgs.math-functions)
          (hsPkgs.vector)
          (hsPkgs.indentation-parsec)
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
          (hsPkgs.bytestring)
          (hsPkgs.optparse-applicative)
          (hsPkgs.syb)
          (hsPkgs.exact-combinatorics)
        ];
      };
      exes = {
        "hakaru" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.vector)
            (hsPkgs.optparse-applicative)
          ];
        };
        "compile" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
          ];
        };
        "summary" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
          ];
        };
        "hk-maple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
          ];
        };
        "density" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
          ];
        };
        "disintegrate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.optparse-applicative)
          ];
        };
        "pretty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.optparse-applicative)
          ];
        };
        "prettyinternal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.optparse-applicative)
          ];
        };
        "momiji" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
          ];
        };
        "normalize" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
          ];
        };
        "hkc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.semigroups)
          ];
        };
        "mh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
          ];
        };
      };
      tests = {
        "system-testsuite" = {
          depends = [
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
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.syb)
            (hsPkgs.filepath)
            (hsPkgs.exact-combinatorics)
          ];
        };
      };
    };
  }