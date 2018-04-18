{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network";
          version = "2.6.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto, Evan Borden";
        author = "";
        homepage = "https://github.com/haskell/network";
        url = "";
        synopsis = "Low-level networking interface";
        description = "This package provides a low-level networking interface.\n\nIn network-2.6 the @Network.URI@ module was split off into its own\npackage, network-uri-2.6. If you're using the @Network.URI@ module\nyou can automatically get it from the right package by adding this\nto your .cabal file:\n\n> library\n>   build-depends: network-uri-flag";
        buildType = "Configure";
      };
      components = {
        network = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
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
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }