{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-test";
          version = "0.3.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Nubis <nubis@woobiz.com.ar>, Michael Snoyman";
        author = "Nubis <nubis@woobiz.com.ar>";
        homepage = "http://www.yesodweb.com";
        url = "";
        synopsis = "integration testing for WAI/Yesod Applications";
        description = "Behaviour Oriented integration Testing for Yesod Applications";
        buildType = "Simple";
      };
      components = {
        "yesod-test" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.persistent
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-test
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.HUnit
            hsPkgs.hspec
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.text
            hsPkgs.xml-conduit
            hsPkgs.xml-types
            hsPkgs.containers
            hsPkgs.html-conduit
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.pool-conduit
            hsPkgs.monad-control
            hsPkgs.time
            hsPkgs.blaze-builder
            hsPkgs.cookie
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-test
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.xml-conduit
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.html-conduit
            ];
          };
        };
      };
    }