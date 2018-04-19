{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      support_bytestring = true;
      support_deepseq = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "memory";
          version = "0.10";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/vincenthz/hs-memory";
        url = "";
        synopsis = "memory and related abstraction stuff";
        description = "Chunk of memory, polymorphic byte array management and manipulation\n\n* A polymorphic byte array abstraction and function similar to strict ByteString.\n\n* Different type of byte array abstraction.\n\n* Raw memory IO operations (memory set, memory copy, ..)\n\n* Aliasing with endianness support.\n\n* Encoding : Base16, Base32, Base64.";
        buildType = "Simple";
      };
      components = {
        memory = {
          depends  = ([
            hsPkgs.base
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional _flags.support_bytestring hsPkgs.bytestring) ++ pkgs.lib.optional _flags.support_deepseq hsPkgs.deepseq;
        };
        tests = {
          test-memory = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.memory
            ];
          };
        };
      };
    }