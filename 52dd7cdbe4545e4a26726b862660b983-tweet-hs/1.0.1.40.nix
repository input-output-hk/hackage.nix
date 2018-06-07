{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm-fast = false;
      library = false;
      development = false;
      parallel-gc = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tweet-hs";
          version = "1.0.1.40";
        };
        license = "BSD-3-Clause";
        copyright = "2016-2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/command-line-tweeter#readme";
        url = "";
        synopsis = "Command-line tool for twitter";
        description = "a Command Line Interface Tweeter";
        buildType = "Simple";
      };
      components = {
        tweet-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client-tls
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.authenticate-oauth
            hsPkgs.megaparsec
            hsPkgs.bytestring
            hsPkgs.split
            hsPkgs.lens
            hsPkgs.unordered-containers
            hsPkgs.htoml-megaparsec
            hsPkgs.data-default
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.ansi-wl-pprint
            hsPkgs.composition-prelude
            hsPkgs.extra
            hsPkgs.aeson
          ];
        };
        exes = {
          tweet = {
            depends  = [
              hsPkgs.base
              hsPkgs.tweet-hs
              hsPkgs.optparse-applicative
              hsPkgs.directory
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          tweeths-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tweet-hs
              hsPkgs.hspec
            ];
          };
        };
        benchmarks = {
          tweeths-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.tweet-hs
              hsPkgs.bytestring
              hsPkgs.megaparsec
            ];
          };
        };
      };
    }