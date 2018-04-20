{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-attoparsec";
          version = "0.9.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Leon Mergen";
        maintainer = "leon@solatis.com";
        author = "Leon Mergen";
        homepage = "";
        url = "";
        synopsis = "Utility functions for running an attoparsec parser against a socket";
        description = "Run an attoparsec parser against a TCP socket";
        buildType = "Simple";
      };
      components = {
        network-attoparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        tests = {
          test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.exceptions
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-simple
              hsPkgs.attoparsec
              hsPkgs.network-attoparsec
            ];
          };
        };
      };
    }