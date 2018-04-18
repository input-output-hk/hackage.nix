{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackernews";
          version = "0.3.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "API for Hacker News";
        description = "API for news.ycombinator.com";
        buildType = "Simple";
      };
      components = {
        hackernews = {
          depends  = [
            hsPkgs.HsOpenSSL
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.either
            hsPkgs.http-streams
            hsPkgs.io-streams
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hackernews
              hsPkgs.hspec
              hsPkgs.transformers
            ];
          };
        };
      };
    }