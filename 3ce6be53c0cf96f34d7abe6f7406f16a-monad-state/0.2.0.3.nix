{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "monad-state";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Byron James Johnson";
        maintainer = "ByronJohnsonFP@gmail.com";
        author = "Byron James Johnson";
        homepage = "https://github.com/bairyn/monad-state";
        url = "";
        synopsis = "Utility library for monads, particularly those involving state.";
        description = "Utility library for monads, particularly those involving state.";
        buildType = "Simple";
      };
      components = {
        "monad-state" = {
          depends  = [
            hsPkgs.base
            hsPkgs.fclabels
            hsPkgs.transformers
            hsPkgs.monads-tf
            hsPkgs.AbortT-transformers
          ];
        };
      };
    }