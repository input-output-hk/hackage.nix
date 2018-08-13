{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
      with-quickcheck = true;
      interactive = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "2.0";
      identifier = {
        name = "hgeometry";
        version = "0.7.0.0";
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
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.contravariant)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.vinyl)
          (hsPkgs.deepseq)
          (hsPkgs.fingertree)
          (hsPkgs.colour)
          (hsPkgs.reflection)
          (hsPkgs.parsec)
          (hsPkgs.vector)
          (hsPkgs.fixed-vector)
          (hsPkgs.data-clist)
          (hsPkgs.hexpat)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optionals (_flags.with-quickcheck) [
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
        ];
      };
      exes = {
        "hgeometry-viewer" = {
          depends  = pkgs.lib.optionals (_flags.interactive) [
            (hsPkgs.base)
            (hsPkgs.hgeometry)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.vinyl)
            (hsPkgs.semigroups)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.hexpat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.vector)
            (hsPkgs.colour)
            (hsPkgs.cairo-canvas)
            (hsPkgs.gi-gtk)
            (hsPkgs.reactive-banana-gi-gtk)
            (hsPkgs.cairo)
            (hsPkgs.gi-cairo)
            (hsPkgs.gi-gdk)
            (hsPkgs.gi-gtk)
            (hsPkgs.transformers)
            (hsPkgs.linear)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.reactive-banana)
          ];
        };
        "hgeometry-examples" = {
          depends  = pkgs.lib.optionals (_flags.examples) [
            (hsPkgs.base)
            (hsPkgs.hgeometry)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.vinyl)
            (hsPkgs.semigroups)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.hexpat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.approximate-equality)
            (hsPkgs.hgeometry)
            (hsPkgs.lens)
            (hsPkgs.data-clist)
            (hsPkgs.linear)
            (hsPkgs.bytestring)
            (hsPkgs.vinyl)
            (hsPkgs.semigroups)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.singletons)
            (hsPkgs.colour)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
        "bapc_examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.array)
            (hsPkgs.hgeometry)
            (hsPkgs.lens)
            (hsPkgs.data-clist)
            (hsPkgs.linear)
            (hsPkgs.semigroups)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.fixed-vector)
            (hsPkgs.linear)
            (hsPkgs.semigroups)
            (hsPkgs.deepseq)
            (hsPkgs.deepseq-generics)
            (hsPkgs.hgeometry)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }