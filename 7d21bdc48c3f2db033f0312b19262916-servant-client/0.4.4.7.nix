{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-client";
          version = "0.4.4.7";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Zalora South East Asia Pte Ltd";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "automatical derivation of querying functions for servant webservices";
        description = "This library lets you derive automatically Haskell functions that\nlet you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.\n\nSee <http://haskell-servant.github.io/tutorial/client.html the client section of the tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>";
        buildType = "Simple";
      };
      components = {
        servant-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.network-uri
            hsPkgs.safe
            hsPkgs.servant
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.either
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-media
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.servant
              hsPkgs.servant-client
              hsPkgs.servant-server
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }