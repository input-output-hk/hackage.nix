{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unix-memory";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-unix-memory";
        url = "";
        synopsis = "Unix memory syscalls";
        description = "unix memory syscalls (mmap, munmap, madvise, msync, mlock)";
        buildType = "Simple";
      };
      components = {
        "unix-memory" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
        tests = {
          "test-memorymap" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.unix
              hsPkgs.unix-memory
            ];
          };
        };
      };
    }