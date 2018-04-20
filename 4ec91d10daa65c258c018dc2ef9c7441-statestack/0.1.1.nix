{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "statestack";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "byorgey@cis.upenn.edu";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Simple State-like monad transformer with saveable and restorable state";
        description = "Simple State-like monad transformer where states can be saved to\nand restored from an internal stack.";
        buildType = "Simple";
      };
      components = {
        statestack = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.newtype
          ];
        };
      };
    }