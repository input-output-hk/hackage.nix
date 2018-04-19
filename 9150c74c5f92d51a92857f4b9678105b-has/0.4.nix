{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "has";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Yusaku Hashimoto 2010";
        maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
        author = "Yusaku Hashimoto";
        homepage = "http://github.com/nonowarn/has";
        url = "";
        synopsis = "Entity based records";
        description = "Usage: <http://github.com/nonowarn/has/blob/master/README.md>\n\nAnd its examples and test would be helpful:\n\n* <http://github.com/nonowarn/has/tree/master/examples/>\n\n* <http://github.com/nonowarn/has/blob/master/test/Main.hs>";
        buildType = "Custom";
      };
      components = {
        has = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
        exes = {
          test = {
            depends  = optionals _flags.test [
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }