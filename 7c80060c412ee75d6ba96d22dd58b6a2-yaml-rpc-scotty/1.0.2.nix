{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yaml-rpc-scotty";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "Ilya V. Portnov";
        homepage = "http://redmine.iportnov.ru/projects/yaml-rpc";
        url = "";
        synopsis = "Scotty server backend for yaml-rpc";
        description = "This package provides Scotty-based server backend for yaml-rpc package.";
        buildType = "Simple";
      };
      components = {
        yaml-rpc-scotty = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mmorph
            hsPkgs.aeson
            hsPkgs.yaml
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.scotty
            hsPkgs.yaml-rpc
          ];
        };
      };
    }