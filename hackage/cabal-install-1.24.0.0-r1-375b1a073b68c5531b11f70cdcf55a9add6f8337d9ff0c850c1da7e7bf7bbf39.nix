{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      old-bytestring = false;
      old-directory = false;
      network-uri = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-install"; version = "1.24.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2005 Lemmih <lemmih@gmail.com>\n2006 Paolo Martini <paolo@nemail.it>\n2007 Bjorn Bringert <bjorn@bringert.net>\n2007 Isaac Potoczny-Jones <ijones@syntaxpolice.org>\n2007-2012 Duncan Coutts <duncan@community.haskell.org>";
      maintainer = "cabal-devel@haskell.org";
      author = "Lemmih <lemmih@gmail.com>\nPaolo Martini <paolo@nemail.it>\nBjorn Bringert <bjorn@bringert.net>\nIsaac Potoczny-Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "cabal" = {
          depends = (((([
            (hsPkgs.async)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.HTTP)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.tar)
            (hsPkgs.time)
            (hsPkgs.zlib)
            (hsPkgs.hackage-security)
            ] ++ (if flags.old-bytestring
            then [ (hsPkgs.bytestring) (hsPkgs.bytestring-builder) ]
            else [ (hsPkgs.bytestring) ])) ++ (if flags.old-directory
            then [ (hsPkgs.directory) (hsPkgs.old-time) (hsPkgs.process) ]
            else [
              (hsPkgs.directory)
              (hsPkgs.process)
              ])) ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) (hsPkgs.network) ]
            else [
              (hsPkgs.network)
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        };
      tests = {
        "unit-tests" = {
          depends = ((([
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.stm)
            (hsPkgs.tar)
            (hsPkgs.time)
            (hsPkgs.HTTP)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.hackage-security)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optional (flags.old-directory) (hsPkgs.old-time)) ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        "integration-tests" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        };
      };
    }