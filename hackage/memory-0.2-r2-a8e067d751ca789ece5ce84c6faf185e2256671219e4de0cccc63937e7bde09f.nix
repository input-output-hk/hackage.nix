{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      support_bytestring = true;
      support_deepseq = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "memory";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/hs-memory";
      url = "";
      synopsis = "memory and related abtraction stuff";
      description = "Chunk of memory, polymorphic byte array management and manipulation\n\n* A polymorphic byte array abstraction and function similar to strict ByteString.\n* Different type of byte array abstraction.\n* Raw memory IO operations (memory set, memory copy, ..)\n* Aliasing with endianness support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ] ++ pkgs.lib.optional (flags.support_bytestring) (hsPkgs.bytestring)) ++ pkgs.lib.optional (flags.support_deepseq) (hsPkgs.deepseq);
      };
      tests = {
        "test-memory" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.memory)
          ];
        };
      };
    };
  }