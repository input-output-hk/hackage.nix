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
      specVersion = "1.2";
      identifier = {
        name = "vector-mmap";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel Peebles 2010";
      maintainer = "Daniel Peebles <pumpkingod@gmail.com>";
      author = "Daniel Peebles <pumpkingod@gmail.com>";
      homepage = "http://github.com/pumpkin/vector-mmap";
      url = "";
      synopsis = "Memory map immutable and mutable vectors";
      description = "Memory map immutable and mutable vectors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mmap)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
      };
    };
  }