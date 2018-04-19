{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-builder";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "junji.hashimoto@gmail.com";
        author = "Junji Hashimoto";
        homepage = "";
        url = "";
        synopsis = "Linux NetworkNameSpace Builder";
        description = "Linux NetworkNameSpace Builder";
        buildType = "Simple";
      };
      components = {
        network-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.yaml
            hsPkgs.shelly
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        exes = {
          network-builder = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.yaml
              hsPkgs.shelly
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.network-builder
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-server
              hsPkgs.cabal-test-bin
              hsPkgs.process
            ];
          };
        };
      };
    }