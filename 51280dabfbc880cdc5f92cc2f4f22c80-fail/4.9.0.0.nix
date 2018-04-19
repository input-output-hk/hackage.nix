{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fail";
          version = "4.9.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "Herbert Valerio Riedel";
        homepage = "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail";
        url = "";
        synopsis = "Forward-compatible MonadFail class";
        description = "This package contains the \"Control.Monad.Fail\" module providing the\n<https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail MonadFail>\nclass that became available in\n<https://hackage.haskell.org/package/base-4.9.0.0 base-4.9.0.0>\nfor older @base@ package versions.\n\nThis package turns into an empty package when used with GHC versions\nwhich already provide the \"Control.Monad.Fail\" module to make way for\nGHC's own \"Control.Monad.Fail\" module.";
        buildType = "Simple";
      };
      components = {
        fail = {
          depends  = pkgs.lib.optional (!compiler.isGhc) hsPkgs.base;
        };
      };
    }