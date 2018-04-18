{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glasso";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "Graphical Lasso algorithm";
        description = "Graphical Lasso algorithm";
        buildType = "Simple";
      };
      components = {
        glasso = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }