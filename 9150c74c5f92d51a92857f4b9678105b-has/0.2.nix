{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "has";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Yusaku Hashimoto 2010";
        maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
        author = "Yusaku Hashimoto";
        homepage = "http://github.com/nonowarn/has";
        url = "";
        synopsis = "Generic Haskell's Record Accessors";
        description = "Usage: <http://github.com/nonowarn/has/blob/master/README.md>\n\nAnd its test would be helpful: <http://github.com/nonowarn/has/blob/master/test/Main.hs>";
        buildType = "Custom";
      };
      components = {
        has = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          test = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }