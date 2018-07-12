{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-routes";
          version = "1.2.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Efficient routing for Yesod.";
        description = "Provides an efficient routing system, a parser and TH code generation.";
        buildType = "Simple";
      };
      components = {
        "yesod-routes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.path-pieces
          ];
        };
        tests = {
          "runtests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-routes
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.containers
              hsPkgs.template-haskell
              hsPkgs.path-pieces
              hsPkgs.bytestring
            ];
          };
        };
      };
    }