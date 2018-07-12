{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fastpbkdf2";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Alfredo Di Napoli";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "https://github.com/adinapoli/fastpbkdf2-hs#readme";
        url = "";
        synopsis = "Haskell bindings to the fastpbkdf2 C library";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "fastpbkdf2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = if system.isWindows || system.isWindows
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto ];
        };
        tests = {
          "fastpbkdf2-hs-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.fastpbkdf2
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          "fastpbkdf2-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.fastpbkdf2
              hsPkgs.cryptonite
              hsPkgs.pbkdf
            ];
          };
        };
      };
    }