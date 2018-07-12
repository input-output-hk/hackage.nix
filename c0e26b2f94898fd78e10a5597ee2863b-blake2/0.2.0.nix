{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hlint = true;
      doctest = true;
      llvm = false;
      support_blake2_sse = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blake2";
          version = "0.2.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "jgalt@centromere.net";
        author = "John Galt";
        homepage = "https://github.com/centromere/blake2";
        url = "";
        synopsis = "A library providing BLAKE2";
        description = "This library provides the <https://blake2.net/ BLAKE2> hash algorithms.";
        buildType = "Simple";
      };
      components = {
        "blake2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.blake2
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
          "hlint" = {
            depends  = pkgs.lib.optionals (!(!_flags.hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blake2
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
      };
    }