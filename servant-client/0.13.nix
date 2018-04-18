{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-client";
          version = "0.13";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2017 Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "automatical derivation of querying functions for servant webservices";
        description = "This library lets you derive automatically Haskell functions that\nlet you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.\n\nSee <http://haskell-servant.readthedocs.org/en/stable/tutorial/Client.html the client section of the tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>";
        buildType = "Simple";
      };
      components = {
        servant-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.servant-client-core
            hsPkgs.aeson
            hsPkgs.base-compat
            hsPkgs.attoparsec
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.semigroupoids
            hsPkgs.stm
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.http-api-data
              hsPkgs.http-client
              hsPkgs.http-media
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.servant-client
              hsPkgs.servant-client-core
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.deepseq
              hsPkgs.generics-sop
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.servant
              hsPkgs.servant-server
            ];
          };
        };
      };
    }