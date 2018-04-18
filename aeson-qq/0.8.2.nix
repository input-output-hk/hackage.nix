{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-qq";
          version = "0.8.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Oscar Finnsson";
        homepage = "https://github.com/sol/aeson-qq#readme";
        url = "";
        synopsis = "JSON quasiquoter for Haskell";
        description = "@aeson-qq@ provides a JSON quasiquoter for Haskell.\n\nThis package exposes the function `aesonQQ` that compile-time\nconverts a string representation of a JSON value into a\n`Data.Aeson.Value`.  `aesonQQ` has the signature\n\n>aesonQQ :: QuasiQuoter\n\nConsult the @README@ for documentation:\n<https://github.com/sol/aeson-qq#readme>";
        buildType = "Simple";
      };
      components = {
        aeson-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.scientific
            hsPkgs.vector
            hsPkgs.aeson
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.scientific
              hsPkgs.vector
              hsPkgs.aeson
              hsPkgs.parsec
              hsPkgs.template-haskell
              hsPkgs.haskell-src-meta
              hsPkgs.hspec
              hsPkgs.ghc-prim
            ];
          };
        };
      };
    }