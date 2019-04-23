{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "vector-endian"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://git.zenhack.net/zenhack/haskell-vector-endian";
      url = "";
      synopsis = "Storable vectors with cpu-independent representation.";
      description = "This package exposes data types that implement the type classes from the\nvector package, but the vectors have an in-memory representation that\nis independent of the host's CPU.\n\nThis makes the data stored within them suitable for storage or transmission\nover a network, and they can be converted to bytestrings without copying.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.zenhack-prelude)
          (hsPkgs.cpu)
          (hsPkgs.vector)
          (hsPkgs.deepseq)
          (hsPkgs.endian-common)
          (hsPkgs.vector-endian-big)
          (hsPkgs.vector-endian-little)
          ];
        };
      sublibs = {
        "endian-common" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zenhack-prelude)
            (hsPkgs.cpu)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            ];
          };
        "little-endian" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zenhack-prelude)
            (hsPkgs.cpu)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.endian-common)
            ];
          };
        "big-endian" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zenhack-prelude)
            (hsPkgs.cpu)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.endian-common)
            ];
          };
        "vector-endian-indef" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zenhack-prelude)
            (hsPkgs.cpu)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.endian-common)
            ];
          };
        "vector-endian-little" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zenhack-prelude)
            (hsPkgs.cpu)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.vector-endian-indef)
            (hsPkgs.little-endian)
            ];
          };
        "vector-endian-big" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zenhack-prelude)
            (hsPkgs.cpu)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.vector-endian-indef)
            (hsPkgs.big-endian)
            ];
          };
        };
      };
    }