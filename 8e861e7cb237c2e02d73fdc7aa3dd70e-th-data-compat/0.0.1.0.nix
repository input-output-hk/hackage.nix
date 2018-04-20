{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      template-haskell-210 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-data-compat";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "";
        url = "";
        synopsis = "Compatibility for data definition template of TH";
        description = "This package contains wrapped name definitions of\ndata definition template";
        buildType = "Simple";
      };
      components = {
        th-data-compat = {
          depends  = [ hsPkgs.base ] ++ [
            hsPkgs.template-haskell
          ];
        };
      };
    }