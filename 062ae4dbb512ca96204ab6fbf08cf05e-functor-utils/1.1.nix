{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "functor-utils";
          version = "1.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2015 Wojciech Danilo";
        maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
        author = "Wojciech Danilo";
        homepage = "https://github.com/wdanilo/functor-utils";
        url = "";
        synopsis = "Collection of functor utilities, providing handy operators, like generalization of (.).";
        description = "";
        buildType = "Simple";
      };
      components = {
        functor-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }