{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network";
          version = "2.4.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Johan Tibell <johan.tibell@gmail.com>";
        author = "";
        homepage = "https://github.com/haskell/network";
        url = "";
        synopsis = "Low-level networking interface";
        description = "Low-level networking interface";
        buildType = "Configure";
      };
      components = {
        network = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          regression = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          uri = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }