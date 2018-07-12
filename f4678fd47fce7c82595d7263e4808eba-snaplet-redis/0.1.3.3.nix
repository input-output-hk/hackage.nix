{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-redis";
          version = "0.1.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "https://github.com/dzhus/snaplet-redis/";
        url = "";
        synopsis = "Redis support for Snap Framework";
        description = "This package provides a snaplet which exposes\ninterface to Redis in-memory key-value storage as\nimplemented by Hedis library. Inline\ndocumentation contains usage examples.";
        buildType = "Simple";
      };
      components = {
        "snaplet-redis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.configurator
            hsPkgs.lens
            hsPkgs.hedis
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.snap
            hsPkgs.transformers
          ];
        };
      };
    }