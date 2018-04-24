{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      safe = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "uvector";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Manuel Chakravarty, Gabriele Keller, Roman Leshchinskiy, Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/uvector";
        url = "";
        synopsis = "Fast unboxed arrays with a flexible interface";
        description = "Fast unboxed arrays with a flexible interface.\nThe library is built of fusible combinators, as\ndescribed in the paper /Stream Fusion: From Lists to\nStreams to Nothing at All/.\n\nFor best results, compile with your user programs\nwith -O2 -fvia-C -optc-O3.";
        buildType = "Simple";
      };
      components = {
        uvector = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") hsPkgs.ghc-prim;
        };
      };
    }