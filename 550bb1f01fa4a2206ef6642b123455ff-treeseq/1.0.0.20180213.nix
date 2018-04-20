{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "treeseq";
          version = "1.0.0.20180213";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Julien Moutinho <julm+treeseq@autogeree.net>";
        author = "Julien Moutinho <julm+treeseq@autogeree.net>";
        homepage = "";
        url = "";
        synopsis = "Library for a multi-way tree (rose tree), using Seq (finger tree) for forests";
        description = "Like 'Data.Tree' of @containers@,\nbut use 'Data.Sequence' instead of 'Data.List' for forests ('Trees').";
        buildType = "Simple";
      };
      components = {
        treeseq = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }