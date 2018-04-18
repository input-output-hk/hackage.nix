{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "functor-utils";
          version = "1.17.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2018 Luna Team";
        maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
        author = "Luna Team";
        homepage = "https://github.com/luna/functor-utils";
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
            hsPkgs.lens
          ];
        };
      };
    }