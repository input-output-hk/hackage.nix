{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "keyvaluehash";
          version = "0.3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Eyal Lotem";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "";
        url = "";
        synopsis = "Pure Haskell key/value store implementation";
        description = "A simple bytestring key/value store implemented\nin terms of hash table over a file.\nIt cannot yet grow/shrink the hash table as\nneeded, nor does it free old unused (key,value)\npair storage.\nMostly useful for applications that need not\nworry about the size of their persistent store.\nReduces dependency hell.";
        buildType = "Simple";
      };
      components = {
        keyvaluehash = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.binary
            hsPkgs.derive
            hsPkgs.mmap
            hsPkgs.array
            hsPkgs.storable-record
          ];
        };
      };
    }