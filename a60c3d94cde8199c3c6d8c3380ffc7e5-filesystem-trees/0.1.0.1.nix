{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "filesystem-trees";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acurtis@spsu.edu";
        author = "Adam Curtis";
        homepage = "";
        url = "";
        synopsis = "Recursively manipulate and traverse filesystems as lazy rose trees.";
        description = "";
        buildType = "Simple";
      };
      components = {
        filesystem-trees = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.unix
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.dlist
            hsPkgs.mtl
            hsPkgs.cond
            hsPkgs.deepseq
          ];
        };
      };
    }