{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hairy";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "2014 Taylor Fausak <taylor@fausak.me>";
        maintainer = "Taylor Fausak <taylor@fausak.me>";
        author = "Taylor Fausak <taylor@fausak.me>";
        homepage = "https://github.com/tfausak/hairy";
        url = "";
        synopsis = "A JSON REST API";
        description = "Hairy is a JSON REST API.\n\nCheck out <https://github.com/tfausak/hairy#readme the readme> for\ndocumentation.";
        buildType = "Simple";
      };
      components = {
        hairy = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.data-default
            hsPkgs.heroku
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.monad-logger
            hsPkgs.persistent
            hsPkgs.persistent-postgresql
            hsPkgs.persistent-template
            hsPkgs.scotty
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
          ];
        };
        exes = {
          hairy = {
            depends  = [
              hsPkgs.base
              hsPkgs.hairy
            ];
          };
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hairy
              hsPkgs.hspec
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.persistent
              hsPkgs.scotty
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.wai-extra
            ];
          };
        };
        benchmarks = {
          criterion = {
            depends  = [
              hsPkgs.base
              hsPkgs.hairy
              hsPkgs.criterion
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.persistent
              hsPkgs.scotty
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.wai-extra
            ];
          };
        };
      };
    }