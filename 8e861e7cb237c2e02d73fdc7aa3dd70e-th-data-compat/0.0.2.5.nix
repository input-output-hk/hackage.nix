{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      template-haskell-210 = false;
      template-haskell-212 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-data-compat";
          version = "0.0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016-2017 Kei Hibino";
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