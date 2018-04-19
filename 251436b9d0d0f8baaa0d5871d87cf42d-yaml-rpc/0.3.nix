{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "yaml-rpc";
          version = "0.3";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "Ilya V. Portnov";
        homepage = "http://iportnov.ru/en/projects/yaml-rpc-0/";
        url = "";
        synopsis = "Simple library for network (TCP/IP) YAML RPC";
        description = "This library aimed to organize remote procedure call (RPC)\nover TCP/IP network, using YAML as data serialization format.";
        buildType = "Simple";
      };
      components = {
        yaml-rpc = {
          depends  = [
            hsPkgs.yaml
            hsPkgs.data-object-yaml
            hsPkgs.network
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.data-object
            hsPkgs.data-default
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.random
          ];
        };
      };
    }