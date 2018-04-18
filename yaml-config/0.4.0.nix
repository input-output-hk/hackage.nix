{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "yaml-config";
          version = "0.4.0";
        };
        license = "MIT";
        copyright = "Selectel";
        maintainer = "mitroshin@selectel.org";
        author = "Fedor Gogolev <knsd@knsd.net>\nMitroshin Maxim <mitroshin@selectel.org>\nSimon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Configuration management";
        description = "Configuration management";
        buildType = "Simple";
      };
      components = {
        yaml-config = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.yaml
          ];
        };
        tests = {
          yaml-config-tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.yaml
            ];
          };
        };
      };
    }