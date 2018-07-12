{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-static";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/";
        url = "";
        synopsis = "Static file serving subsite for Yesod Web Framework.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "yesod-static" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.base64-bytestring
            hsPkgs.pureMD5
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.web-routes
            hsPkgs.template-haskell
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.wai-app-static
          ];
        };
        exes = {
          "runtests" = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }