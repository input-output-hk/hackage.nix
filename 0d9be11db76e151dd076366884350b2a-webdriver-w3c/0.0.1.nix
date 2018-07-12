{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "webdriver-w3c";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "2018 Automattic, Inc.";
        maintainer = "nathan.bloomfield@a8c.com";
        author = "Nathan Bloomfield";
        homepage = "https://github.com/nbloomf/webdriver-w3c#readme";
        url = "";
        synopsis = "Bindings to the WebDriver API";
        description = "Please see the README on Github at <https://github.com/nbloomf/webdriver-w3c#readme>";
        buildType = "Simple";
      };
      components = {
        "webdriver-w3c" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.JuicyPixels
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.network-uri
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.scientific
            hsPkgs.script-monad
            hsPkgs.SHA
            hsPkgs.stm
            hsPkgs.tasty
            hsPkgs.tasty-expected-failure
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.uri-encode
            hsPkgs.vector
            hsPkgs.wreq
          ];
        };
        exes = {
          "webdriver-w3c-intro" = {
            depends  = [
              hsPkgs.webdriver-w3c
              hsPkgs.base
              hsPkgs.tasty
            ];
          };
          "wd-tasty-demo" = {
            depends  = [
              hsPkgs.webdriver-w3c
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-expected-failure
            ];
          };
          "wd-parallel-stress-test" = {
            depends  = [
              hsPkgs.webdriver-w3c
              hsPkgs.base
              hsPkgs.tasty
            ];
          };
        };
        tests = {
          "webdriver-w3c-test" = {
            depends  = [
              hsPkgs.webdriver-w3c
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.JuicyPixels
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.unordered-containers
              hsPkgs.scientific
              hsPkgs.script-monad
              hsPkgs.tasty
              hsPkgs.tasty-expected-failure
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.time
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.wreq
            ];
          };
        };
      };
    }