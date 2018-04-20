{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rank1dynamic";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "watson.timothy@gmail.com";
        author = "Edsko de Vries";
        homepage = "http://haskell-distributed.github.com";
        url = "";
        synopsis = "Like Data.Dynamic/Data.Typeable but with support for rank-1 polymorphic types";
        description = "\"Data.Typeable\" and \"Data.Dynamic\" only support monomorphic types.\nIn this package we provide similar functionality but with\nsupport for rank-1 polymorphic types.";
        buildType = "Simple";
      };
      components = {
        rank1dynamic = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.binary
          ];
        };
      };
    }