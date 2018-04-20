{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-wai";
          version = "0.6.3";
        };
        license = "MIT";
        copyright = "(c) 2012-2014 Fujimura Daisuke,\n(c) 2014 Simon Hengel";
        maintainer = "Fujimura Daisuke <me@fujimuradaisuke.com>, Simon Hengel <sol@typeful.net>";
        author = "Fujimura Daisuke <me@fujimuradaisuke.com>, Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Experimental Hspec support for testing WAI applications";
        description = "Experimental Hspec support for testing WAI applications";
        buildType = "Simple";
      };
      components = {
        hspec-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.hspec-core
            hsPkgs.hspec-expectations
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.case-insensitive
              hsPkgs.http-types
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.hspec-core
              hsPkgs.hspec-expectations
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }