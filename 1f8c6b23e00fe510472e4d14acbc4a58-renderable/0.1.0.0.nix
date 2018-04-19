{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "renderable";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "efsubenovex@gmail.com";
        author = "Schell Scivally";
        homepage = "http://zyghost.com";
        url = "";
        synopsis = "Provides a nice API for rendering data types that change\nover time.";
        description = "Instances of Renderable conform to a simple API that makes their\nvisual representations composable through hashing and cacheing.\nAlso provided are some convenience functions for writing\nRenderable instances. Not provided are actual rendering functions.";
        buildType = "Simple";
      };
      components = {
        renderable = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
          ];
        };
      };
    }