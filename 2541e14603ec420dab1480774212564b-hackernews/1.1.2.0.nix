{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackernews";
          version = "1.1.2.0";
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
            hsPkgs.servant
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-instances
          ] ++ (if compiler.isGhcjs
            then [
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.ghcjs-base
              hsPkgs.string-conversions
              hsPkgs.text
            ]
            else [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.servant-client
              hsPkgs.http-client
              hsPkgs.string-conversions
              hsPkgs.http-types
              hsPkgs.text
            ]);
        };
        exes = {
          example = {
            depends  = if compiler.isGhcjs
              then [
                hsPkgs.base
                hsPkgs.hackernews
                hsPkgs.ghcjs-base
              ]
              else [
                hsPkgs.base
                hsPkgs.hackernews
                hsPkgs.http-client-tls
                hsPkgs.http-client
              ];
          };
          ghcjs-tests = {
            depends  = pkgs.lib.optionals compiler.isGhcjs [
              hsPkgs.base
              hsPkgs.hackernews
              hsPkgs.ghcjs-base
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.quickcheck-instances
              hsPkgs.aeson
              hsPkgs.QuickCheck
            ];
          };
        };
        tests = {
          ghc-tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.hackernews
              hsPkgs.hspec
              hsPkgs.http-client-tls
              hsPkgs.http-client
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }