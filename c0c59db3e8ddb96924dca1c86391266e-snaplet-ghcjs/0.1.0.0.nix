{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-ghcjs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "a.johncant@gmail.com";
        author = "Sönke Hahn, John Cant";
        homepage = "";
        url = "";
        synopsis = "Serve javascript files compiled with GHCJS";
        description = "Dynamically compile Haskell with GHCJS and serve it as JavaScript.";
        buildType = "Simple";
      };
      components = {
        "snaplet-ghcjs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.string-conversions
            hsPkgs.snap-core
            hsPkgs.snap
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.lens
          ];
        };
      };
    }