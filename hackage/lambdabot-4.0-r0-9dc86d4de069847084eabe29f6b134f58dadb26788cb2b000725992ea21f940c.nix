{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "lambdabot";
        version = "4.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "BotPP" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.plugins)
            (hsPkgs.fps)
          ];
        };
        "lambdabot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.plugins)
            (hsPkgs.fps)
          ];
        };
        "hoogle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.plugins)
            (hsPkgs.fps)
          ];
        };
        "djinn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.plugins)
            (hsPkgs.fps)
          ];
        };
        "unlambda" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.plugins)
            (hsPkgs.fps)
          ];
        };
        "runplugs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.plugins)
            (hsPkgs.fps)
          ];
        };
      };
    };
  }