{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexample = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-checked-exceptions";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/servant-checked-exceptions";
        url = "";
        synopsis = "Checked exceptions for Servant APIs.";
        description = "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.";
        buildType = "Simple";
      };
      components = {
        servant-checked-exceptions = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.http-media
            hsPkgs.lens
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.servant-docs
            hsPkgs.servant-server
            hsPkgs.text
          ];
        };
        exes = {
          servant-checked-exceptions-example-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.http-api-data
              hsPkgs.http-client
              hsPkgs.optparse-applicative
              hsPkgs.servant
              hsPkgs.servant-checked-exceptions
              hsPkgs.servant-client
              hsPkgs.text
            ];
          };
          servant-checked-exceptions-example-docs = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.http-api-data
              hsPkgs.servant
              hsPkgs.servant-checked-exceptions
              hsPkgs.servant-docs
              hsPkgs.text
            ];
          };
          servant-checked-exceptions-example-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.http-api-data
              hsPkgs.natural-transformation
              hsPkgs.servant
              hsPkgs.servant-checked-exceptions
              hsPkgs.servant-server
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
        tests = {
          servant-checked-exceptions-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
          servant-checked-exceptions-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec-wai
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.servant
              hsPkgs.servant-checked-exceptions
              hsPkgs.servant-server
              hsPkgs.wai
            ];
          };
        };
      };
    }