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
        version = "4.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "A multi-talented IRC bot";
      description = "Lambdabot is a Haskell development tool, written in Haskell.\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "BotPP" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
        "lambdabot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
        "hoogle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
        "djinn" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
        "ft" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
        "runplugs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
        "quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
        "smallcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src)
            (hsPkgs.readline)
            (hsPkgs.QuickCheck)
            (hsPkgs.arrows)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.plugins)
            (hsPkgs.oeis)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }