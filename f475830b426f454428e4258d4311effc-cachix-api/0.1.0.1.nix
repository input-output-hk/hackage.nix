{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cachix-api";
          version = "0.1.0.1";
        };
        license = "Apache-2.0";
        copyright = "2018 Domen Kožar";
        maintainer = "domen@enlambda.com";
        author = "Domen Kožar";
        homepage = "https://github.com/cachix/cachix#readme";
        url = "";
        synopsis = "Servant HTTP API specification for https://cachix.org";
        description = "";
        buildType = "Simple";
      };
      components = {
        cachix-api = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.amazonka
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.cookie
            hsPkgs.cryptonite
            hsPkgs.http-api-data
            hsPkgs.http-media
            hsPkgs.lens
            hsPkgs.memory
            hsPkgs.servant
            hsPkgs.servant-auth
            hsPkgs.servant-auth-server
            hsPkgs.servant-auth-swagger
            hsPkgs.servant-streaming
            hsPkgs.servant-swagger
            hsPkgs.servant-swagger-ui-core
            hsPkgs.string-conv
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          cachix-gen-swagger = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.amazonka
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.cachix-api
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.cookie
              hsPkgs.cryptonite
              hsPkgs.http-api-data
              hsPkgs.http-media
              hsPkgs.lens
              hsPkgs.memory
              hsPkgs.servant
              hsPkgs.servant-auth
              hsPkgs.servant-auth-server
              hsPkgs.servant-auth-swagger
              hsPkgs.servant-streaming
              hsPkgs.servant-swagger
              hsPkgs.servant-swagger-ui-core
              hsPkgs.string-conv
              hsPkgs.swagger2
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          cachix-api-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.amazonka
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.cachix-api
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.cookie
              hsPkgs.cryptonite
              hsPkgs.hspec
              hsPkgs.http-api-data
              hsPkgs.http-media
              hsPkgs.lens
              hsPkgs.memory
              hsPkgs.protolude
              hsPkgs.servant
              hsPkgs.servant-auth
              hsPkgs.servant-auth-server
              hsPkgs.servant-auth-swagger
              hsPkgs.servant-streaming
              hsPkgs.servant-swagger
              hsPkgs.servant-swagger-ui-core
              hsPkgs.string-conv
              hsPkgs.swagger2
              hsPkgs.text
              hsPkgs.transformers
            ];
            build-tools = [
              hsPkgs.buildPackages.hspec-discover
            ];
          };
        };
      };
    }