{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexample = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-static-th";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/servant-static-th";
        url = "";
        synopsis = "Embed a directory of static files in your application and serve them from your Servant server";
        description = "Please see <https://github.com/cdepillabout/servant-static-th#readme README.md>.";
        buildType = "Simple";
      };
      components = {
        servant-static-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-media
            hsPkgs.semigroups
            hsPkgs.servant
            hsPkgs.servant-blaze
            hsPkgs.servant-server
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
        exes = {
          servant-static-th-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant-server
              hsPkgs.servant-static-th
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
        tests = {
          servant-static-th-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
          servant-static-th-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec-wai
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.servant
              hsPkgs.servant-blaze
              hsPkgs.servant-static-th
              hsPkgs.servant-server
              hsPkgs.wai
            ];
          };
        };
      };
    }