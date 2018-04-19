{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      derivedatatypeable = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-lens-fd";
          version = "2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/data-lens-fd/";
        url = "";
        synopsis = "Lenses";
        description = "Lenses";
        buildType = "Simple";
      };
      components = {
        data-lens-fd = {
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