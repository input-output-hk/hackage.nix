{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "b-tree";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/b-tree";
      url = "";
      synopsis = "Immutable disk-based B* trees";
      description = "Immutable disk-based B* trees";
      buildType = "Simple";
    };
    components = {
      "b-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-interleave)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.mmap)
        ];
      };
      tests = {
        "btree-quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.pipes)
            (hsPkgs.binary)
            (hsPkgs.b-tree)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "btree-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            (hsPkgs.pipes)
            (hsPkgs.pipes-interleave)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.errors)
            (hsPkgs.mmap)
          ];
        };
      };
    };
  }