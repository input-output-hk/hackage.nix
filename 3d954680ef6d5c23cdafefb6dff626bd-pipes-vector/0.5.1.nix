{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-vector";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgamari.foss@gmail.com";
        author = "Ben Gamari";
        homepage = "";
        url = "";
        synopsis = "Various proxies for streaming data into vectors";
        description = "Proxies for streaming data into vectors.";
        buildType = "Simple";
      };
      components = {
        pipes-vector = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.primitive
            hsPkgs.pipes
            hsPkgs.vector
          ];
        };
      };
    }