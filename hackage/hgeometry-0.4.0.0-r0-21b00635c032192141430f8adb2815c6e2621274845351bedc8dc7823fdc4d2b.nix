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
      specVersion = "1.10";
      identifier = {
        name = "hgeometry";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "f.staals@uu.nl";
      author = "Frank Staals";
      homepage = "http://fstaals.net/software/hgeometry";
      url = "";
      synopsis = "Data types for geometric objects, geometric algorithms, and data  structures.";
      description = "HGeometry provides some basic geometry types, and geometric algorithms and\ndata structures for them. The main two focusses are: (1) Strong type safety,\nand (2) implementations of geometric algorithms and data structures with good\nasymptotic running time guarantees.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vinyl)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.singletons)
          (hsPkgs.bifunctors)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
          (hsPkgs.bifunctors)
          (hsPkgs.validation)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.vector)
          (hsPkgs.fixed-vector)
          (hsPkgs.data-clist)
          (hsPkgs.hexpat)
          (hsPkgs.mtl)
          (hsPkgs.random)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
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
          ];
        };
      };
    };
  }