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
        name = "columbia";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jacinablackbox@yahoo.com";
      author = "James Candy";
      homepage = "";
      url = "";
      synopsis = "Enhanced serialization for media that support seeking.";
      description = "Libraries such as binary and cereal support sequential reading and writing but do not rely on any further operations. Many media support seeking in files as well. This library implements a file format that supports random access to data entities by seeking.\n\nThis library also uses the syb-with-class library to streamline implementation of serializers for various data entities, so that you don't have to write much boilerplate ;).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filelock)
          (hsPkgs.contravariant)
          (hsPkgs.bytestring)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.syb-with-class)
          (hsPkgs.array)
          (hsPkgs.invariant)
          (hsPkgs.containers)
          (hsPkgs.pointless-haskell)
          (hsPkgs.mmorph)
          (hsPkgs.parallel)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.mmap)
        ];
      };
    };
  }