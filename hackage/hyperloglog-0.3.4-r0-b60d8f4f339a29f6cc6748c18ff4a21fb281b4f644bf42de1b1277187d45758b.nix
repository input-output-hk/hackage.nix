{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-doctests = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hyperloglog";
        version = "0.3.4";
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
      "library" = {
        depends  = [
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
          (hsPkgs.hashable-extras)
          (hsPkgs.lens)
          (hsPkgs.reflection)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.safecopy)
          (hsPkgs.siphash)
          (hsPkgs.tagged)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.generic-deriving);
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.generic-deriving)
            (hsPkgs.semigroups)
            (hsPkgs.simple-reflect)
          ];
        };
      };
    };
  }