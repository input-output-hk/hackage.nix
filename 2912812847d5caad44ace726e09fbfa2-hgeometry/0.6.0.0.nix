{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hgeometry";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "frank@fstaals.net";
        author = "Frank Staals";
        homepage = "https://fstaals.net/software/hgeometry";
        url = "";
        synopsis = "Geometric Algorithms, Data structures, and Data types.";
        description = "HGeometry provides some basic geometry types, and geometric algorithms and\ndata structures for them. The main two focusses are: (1) Strong type safety,\nand (2) implementations of geometric algorithms and data structures with good\nasymptotic running time guarantees. Note that HGeometry is still highly experimental, don't be surprised to find bugs.";
        buildType = "Simple";
      };
      components = {
        "hgeometry" = {
          depends  = [
            hsPkgs.Frames
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.singletons
            hsPkgs.text
            hsPkgs.vinyl
            hsPkgs.deepseq
            hsPkgs.parsec
            hsPkgs.vector
            hsPkgs.fixed-vector
            hsPkgs.data-clist
            hsPkgs.hexpat
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.optparse-applicative
          ];
        };
        exes = {
          "hgeometry-examples" = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.hgeometry
              hsPkgs.lens
              hsPkgs.containers
              hsPkgs.vinyl
              hsPkgs.Frames
              hsPkgs.semigroups
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.hexpat
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.random
            ];
          };
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.hgeometry
              hsPkgs.Frames
              hsPkgs.lens
              hsPkgs.data-clist
              hsPkgs.linear
              hsPkgs.bytestring
              hsPkgs.vinyl
              hsPkgs.semigroups
              hsPkgs.vector
              hsPkgs.containers
              hsPkgs.random
            ];
          };
          "bapc_examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.array
              hsPkgs.hgeometry
              hsPkgs.lens
              hsPkgs.data-clist
              hsPkgs.linear
              hsPkgs.semigroups
            ];
          };
        };
        benchmarks = {
          "benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.semigroups
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.hgeometry
              hsPkgs.Frames
              hsPkgs.lens
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }