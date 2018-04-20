{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-quick";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2017 Scott Sadler";
        maintainer = "Scott Sadler <scott@scottsadler.de>";
        author = "Scott Sadler";
        homepage = "https://github.com/libscott/aeson-quick";
        url = "";
        synopsis = "Quick JSON extractions with Aeson";
        description = "DSL on top of Aeson. This library is /experimental/.";
        buildType = "Simple";
      };
      components = {
        aeson-quick = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.deepseq
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          aeson-quick-test = {
            depends  = [
              hsPkgs.aeson-quick
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.microlens
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.aeson-quick
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.text
            ];
          };
        };
      };
    }