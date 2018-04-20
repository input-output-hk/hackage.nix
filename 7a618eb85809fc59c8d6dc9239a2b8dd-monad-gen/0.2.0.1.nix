{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-gen";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "danny.gratzer@gmail.com";
        author = "Danny Gratzer";
        homepage = "";
        url = "";
        synopsis = "A simple monad for generating fresh integers";
        description = "This module provides a simple monad transformer @GenT@ to enumerate unique values within\na monadic computation. It also plays nicely with everything in the MTL.";
        buildType = "Simple";
      };
      components = {
        monad-gen = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }