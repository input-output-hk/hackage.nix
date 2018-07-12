{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "names-th";
          version = "0.2.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013-2018 Kei Hibino, 2015 Shohei Murayama";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "Manipulate name strings for TH";
        description = "This package includes functions to manipulate name string\nand extra library functions for Template Haskell.";
        buildType = "Simple";
      };
      components = {
        "names-th" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
          ];
        };
      };
    }