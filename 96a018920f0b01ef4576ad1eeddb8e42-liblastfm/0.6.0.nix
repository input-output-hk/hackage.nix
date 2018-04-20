{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test-api = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "liblastfm";
          version = "0.6.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
        author = "Matvey Aksenov, Dmitry Malikov";
        homepage = "";
        url = "";
        synopsis = "Lastfm API interface";
        description = "Provides interface to Lastfm REST API, supports XML and JSON formats.";
        buildType = "Simple";
      };
      components = {
        liblastfm = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.network-uri
            hsPkgs.profunctors
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.xml-conduit
          ];
        };
        tests = {
          api = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.lens-aeson
              hsPkgs.lens
              hsPkgs.liblastfm
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.xml-html-conduit-lens
            ];
          };
          spec = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.hspec
              hsPkgs.hspec-expectations-lens
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.network-uri
              hsPkgs.profunctors
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.xml-conduit
              hsPkgs.xml-html-conduit-lens
            ];
          };
        };
      };
    }