{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "product-isomorphic";
          version = "0.0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://github.com/khibino/haskell-product-isomorphic";
        url = "";
        synopsis = "Weaken applicative functor on products";
        description = "Weaken applicative functor which allows only product\nconstruction. Product constructions and deconstructions\nare always isomorphic.";
        buildType = "Simple";
      };
      components = {
        product-isomorphic = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.th-data-compat
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }