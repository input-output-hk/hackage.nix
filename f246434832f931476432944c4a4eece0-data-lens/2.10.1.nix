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
          name = "data-lens";
          version = "2.10.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2012 Edward A. Kmett, Russell O'Connor & Tony Morris";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor, Edward A. Kmett & Tony Morris";
        homepage = "http://github.com/roconnor/data-lens/";
        url = "";
        synopsis = "Haskell 98 Lenses";
        description = "Haskell 98 Lenses";
        buildType = "Simple";
      };
      components = {
        "data-lens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.containers
            hsPkgs.semigroupoids
            hsPkgs.transformers
          ];
        };
      };
    }