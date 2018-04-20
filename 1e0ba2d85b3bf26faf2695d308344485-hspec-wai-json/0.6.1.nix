{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-wai-json";
          version = "0.6.1";
        };
        license = "MIT";
        copyright = "(c) 2012-2014 Fujimura Daisuke,\n(c) 2014 Simon Hengel";
        maintainer = "Fujimura Daisuke <me@fujimuradaisuke.com>,\nSimon Hengel <sol@typeful.net>";
        author = "Fujimura Daisuke <me@fujimuradaisuke.com>,\nSimon Hengel <sol@typeful.net>";
        homepage = "https://github.com/hspec/hspec-wai#readme";
        url = "";
        synopsis = "Testing JSON APIs with hspec-wai";
        description = "Testing JSON APIs with hspec-wai";
        buildType = "Simple";
      };
      components = {
        hspec-wai-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec-wai
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.aeson
            hsPkgs.aeson-qq
            hsPkgs.case-insensitive
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec-wai-json
              hsPkgs.hspec-wai
              hsPkgs.hspec
            ];
          };
        };
      };
    }