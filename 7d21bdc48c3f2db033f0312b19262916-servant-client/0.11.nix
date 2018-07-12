{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-client";
          version = "0.11";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016 Zalora South East Asia Pte Ltd, Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "automatical derivation of querying functions for servant webservices";
        description = "This library lets you derive automatically Haskell functions that\nlet you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.\n\nSee <http://haskell-servant.readthedocs.org/en/stable/tutorial/Client.html the client section of the tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>";
        buildType = "Simple";
      };
      components = {
        "servant-client" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.generics-sop
            hsPkgs.http-api-data
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.monad-control
            hsPkgs.network-uri
            hsPkgs.safe
            hsPkgs.semigroupoids
            hsPkgs.servant
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
            hsPkgs.mtl
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.http-api-data
              hsPkgs.http-client
              hsPkgs.http-media
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.servant
              hsPkgs.servant-client
              hsPkgs.servant-server
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.generics-sop
            ];
          };
        };
      };
    }