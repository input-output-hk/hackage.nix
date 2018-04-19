{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "MaybeT";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eric Kidd <haskell@randomhacks.net>";
        author = "Eric Kidd <haskell@randomhacks.net>";
        homepage = "";
        url = "";
        synopsis = "MaybeT monad transformer";
        description = "Support for computations with failures.";
        buildType = "Simple";
      };
      components = {
        MaybeT = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }