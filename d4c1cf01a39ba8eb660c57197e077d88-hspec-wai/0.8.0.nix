{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-wai";
          version = "0.8.0";
        };
        license = "MIT";
        copyright = "(c) 2012-2014 Fujimura Daisuke,\n(c) 2014-2015 Simon Hengel";
        maintainer = "Fujimura Daisuke <me@fujimuradaisuke.com>,\nSimon Hengel <sol@typeful.net>";
        author = "Fujimura Daisuke <me@fujimuradaisuke.com>,\nSimon Hengel <sol@typeful.net>";
        homepage = "https://github.com/hspec/hspec-wai#readme";
        url = "";
        synopsis = "Experimental Hspec support for testing WAI applications";
        description = "Experimental Hspec support for testing WAI applications";
        buildType = "Simple";
      };
      components = {
        hspec-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.hspec-core
            hsPkgs.hspec-expectations
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.case-insensitive
              hsPkgs.http-types
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.hspec-core
              hsPkgs.hspec-expectations
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }