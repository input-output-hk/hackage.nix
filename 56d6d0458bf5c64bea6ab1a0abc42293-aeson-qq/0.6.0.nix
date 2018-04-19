{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson-qq";
          version = "0.6.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Oscar Finnsson";
        homepage = "http://github.com/zalora/aeson-qq";
        url = "";
        synopsis = "Json Quasiquatation for Haskell.";
        description = "@aeson-qq@ provides json quasiquatation for Haskell.\n\nThis package expose the function @aesonQQ@ that compile time converts json code into a @Data.Aeson.Value@.\n@aesonQQ@ got the signature\n\n> aesonQQ :: QuasiQuoter.\n\nConsult documentation in the module @Data.Aeson.QQ@.";
        buildType = "Simple";
      };
      components = {
        aeson-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.aeson
            hsPkgs.json-qq
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson-qq
              hsPkgs.aeson
              hsPkgs.hspec
            ];
          };
        };
      };
    }