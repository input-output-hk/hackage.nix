{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { safe = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "uvector";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Manuel Chakravarty, Gabriele Keller, Roman Leshchinskiy, Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/uvector";
      url = "";
      synopsis = "Fast unboxed arrays with a flexible interface";
      description = "Fast unboxed arrays with a flexible interface.\nThe library is built of fusible combinators, as\ndescribed in the paper /Stream Fusion: From Lists to\nStreams to Nothing at All/.\n\nFor best results, compile with your user programs\nwith -O2 -fvia-C -optc-O2.";
      buildType = "Simple";
    };
    components = {
      "uvector" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.gt "6.8.2") (hsPkgs.ghc-prim);
      };
    };
  }