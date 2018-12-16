{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hgeometry";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "frank@fstaals.net";
      author = "Frank Staals";
      homepage = "https://fstaals.net/software/hgeometry";
      url = "";
      synopsis = "Geometric Algorithms, Data structures, and Data types.";
      description = "HGeometry provides some basic geometry types, and geometric algorithms and\ndata structures for them. The main two focusses are: (1) Strong type safety,\nand (2) implementations of geometric algorithms and data structures with good\nasymptotic running time guarantees.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vinyl)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.singletons)
          (hsPkgs.bifunctors)
          (hsPkgs.semigroupoids)
          (hsPkgs.Frames)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
          (hsPkgs.bifunctors)
          (hsPkgs.parsec)
          (hsPkgs.vector)
          (hsPkgs.fixed-vector)
          (hsPkgs.data-clist)
          (hsPkgs.hexpat)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.optparse-applicative)
        ];
      };
      exes = {
        "hgeometry-examples" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.hgeometry)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.vinyl)
            (hsPkgs.Frames)
            (hsPkgs.semigroups)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.hexpat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.random)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hgeometry)
            (hsPkgs.Frames)
            (hsPkgs.lens)
            (hsPkgs.data-clist)
            (hsPkgs.linear)
            (hsPkgs.bytestring)
            (hsPkgs.vinyl)
            (hsPkgs.semigroups)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.random)
          ];
        };
        "bapc_examples" = {
          depends = [
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
    };
  }