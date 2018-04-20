{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-lens";
          version = "2.11";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2014 Edward A. Kmett, Russell O'Connor & Tony Morris";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor, Edward A. Kmett & Tony Morris";
        homepage = "http://github.com/roconnor/data-lens/";
        url = "";
        synopsis = "Used to be Haskell 98 Lenses";
        description = "Used to be Haskell 98 Lenses";
        buildType = "Simple";
      };
      components = {
        data-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.containers
            hsPkgs.semigroupoids
            hsPkgs.transformers
          ];
        };
      };
    }