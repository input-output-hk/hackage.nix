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
        name = "fixfile";
        version = "0.6.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Rev. Johnny Healey <rev.null@gmail.com>";
      author = "Rev. Johnny Healey";
      homepage = "https://github.com/revnull/fixfile";
      url = "";
      synopsis = "File-backed recursive data structures.";
      description = "This package is a library for datatype-generic disk serialization. It\nprovides a file abstraction that uses multi-version concurrency control\nto support transaction-aware isolation for multi-threaded access.\nThe base library comes with a collection of datatypes to provide sets and\nkey-value stores with different properties.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.temporary)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-fixfile" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fixfile)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.exceptions)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }