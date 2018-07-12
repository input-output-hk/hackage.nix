{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-app";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Daniel YU";
        maintainer = "i@icymint.me";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/yam/yam-app#readme";
        url = "";
        synopsis = "Yam App";
        description = "Base Module for Yam";
        buildType = "Simple";
      };
      components = {
        "yam-app" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.aeson
            hsPkgs.yaml
            hsPkgs.text
            hsPkgs.string-conversions
            hsPkgs.exceptions
            hsPkgs.time
            hsPkgs.random
            hsPkgs.data-default
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.ctrie
            hsPkgs.directory
            hsPkgs.fast-logger
            hsPkgs.monad-logger
            hsPkgs.wai-logger
            hsPkgs.persistent
            hsPkgs.resource-pool
            hsPkgs.reflection
            hsPkgs.persistent-sqlite
          ];
        };
      };
    }