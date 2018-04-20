{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rank1dynamic";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries";
        homepage = "http://github.com/haskell-distributed/distributed-process";
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