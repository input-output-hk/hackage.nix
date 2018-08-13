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
        name = "columbia";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jacinablackbox@yahoo.com";
      author = "James Candy";
      homepage = "";
      url = "";
      synopsis = "Enhanced serialization using seeking.";
      description = "Fundamental problems have been discovered with the architecture of this library. It is no longer supported and its use is not recommended. If it is really needed, it is available in one of the old versions.\n\nRelease notes for version 0.1.1:\n\n* Changed the invariant surrounding how files are seeked for reading/writing procedures. This permits an additional optimization. See Utils module for details.\n\n* Generalized the interface to Utils locking strategies to arbitrary monads incorporating exceptions and I/O.\n\nRelease notes for version 0.1.2:\n\n* Minor bug fixes.\n\nRelease notes for version 0.1.3:\n\n* Implemented additional functions specifically for handling dictionaries ('Map's).\n\n* Added basic theory.";
      buildType = "Simple";
    };
    components = {
      "columbia" = {
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
          (hsPkgs.transformers)
          (hsPkgs.mmap)
          (hsPkgs.data-endian)
        ];
      };
    };
  }