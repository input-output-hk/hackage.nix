{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nomyx-api";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Corentin Dupont";
        maintainer = "corentin.dupont@gmail.com";
        author = "Corentin Dupont";
        homepage = "http://www.nomyx.net";
        url = "";
        synopsis = "REST API for Nomyx";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        nomyx-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.split
            hsPkgs.containers
            hsPkgs.network-uri
            hsPkgs.QuickCheck
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.servant-server
            hsPkgs.servant-swagger
            hsPkgs.wai
            hsPkgs.wai-cors
            hsPkgs.swagger2
            hsPkgs.nomyx-language
            hsPkgs.nomyx-core
            hsPkgs.warp
            hsPkgs.yaml
            hsPkgs.bytestring
            hsPkgs.stm
            hsPkgs.mtl
            hsPkgs.either
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.resourcet
            hsPkgs.wai-extra
            hsPkgs.safe
            hsPkgs.hslogger
          ];
        };
      };
    }