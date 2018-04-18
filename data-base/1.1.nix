{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-base";
          version = "1.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2016 Wojciech Danilo";
        maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
        author = "Wojciech Danilo";
        homepage = "https://github.com/wdanilo/data-base";
        url = "";
        synopsis = "Utilities for accessing and comparing types based on so called bases - representations with limited polymorphism.";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-base = {
          depends  = [ hsPkgs.base ];
        };
      };
    }