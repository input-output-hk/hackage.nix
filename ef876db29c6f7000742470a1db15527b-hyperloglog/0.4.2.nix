{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test-doctests = true;
      herbie = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hyperloglog";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/analytics/hyperloglog";
      url = "";
      synopsis = "An approximate streaming (constant space) unique object counter";
      description = "This package provides an approximate streaming (constant space) unique object counter.\n\nSee the original paper for details:\n<http://algo.inria.fr/flajolet/Publications/FlFuGaMe07.pdf>\n\nNotably it can be used to approximate a set of several billion elements with 1-2% inaccuracy\nin around 1.5k of memory.";
      buildType = "Custom";
    };
    components = {
      "hyperloglog" = {
        depends  = ([
          (hsPkgs.approximate)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bits)
          (hsPkgs.bytes)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.comonad)
          (hsPkgs.deepseq)
          (hsPkgs.distributive)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.reflection)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.safecopy)
          (hsPkgs.siphash)
          (hsPkgs.tagged)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (_flags.herbie) (hsPkgs.HerbiePlugin)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.generic-deriving)
            (hsPkgs.hyperloglog)
            (hsPkgs.semigroups)
            (hsPkgs.simple-reflect)
          ];
        };
      };
    };
  }