{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      derivedatatypeable = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-lens-fd";
          version = "2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/roconnor/data-lens-fd/";
        url = "";
        synopsis = "Lenses";
        description = "Lenses";
        buildType = "Simple";
      };
      components = {
        "data-lens-fd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.data-lens
            hsPkgs.comonad-transformers
          ];
        };
      };
    }