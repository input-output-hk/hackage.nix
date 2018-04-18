{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "poly-control";
          version = "1.0.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2015 Wojciech Danilo";
        maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
        author = "Wojciech Danilo";
        homepage = "https://github.com/wdanilo/poly-control";
        url = "";
        synopsis = "This package provides abstraction for polymorphic controls, like PolyMonads or PolyApplicatives.";
        description = "";
        buildType = "Simple";
      };
      components = {
        poly-control = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
          ];
        };
      };
    }