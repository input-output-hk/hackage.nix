{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-vector";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Ben Gamari";
        maintainer = "Ben Gamari <bgamari.foss@gmail.com>";
        author = "Ben Gamari";
        homepage = "";
        url = "";
        synopsis = "Various proxies for streaming data into vectors";
        description = "Proxies for streaming data into vectors.";
        buildType = "Simple";
      };
      components = {
        "pipes-vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.primitive
            hsPkgs.pipes
            hsPkgs.vector
            hsPkgs.monad-primitive
          ];
        };
      };
    }