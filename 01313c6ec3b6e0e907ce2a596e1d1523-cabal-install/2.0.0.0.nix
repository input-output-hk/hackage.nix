{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      old-bytestring = false;
      old-directory = false;
      network-uri = true;
      debug-expensive-assertions = false;
      debug-conflict-sets = false;
      debug-tracetree = false;
      parsec = false;
      monolithic = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cabal-install";
        version = "2.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2003-2017, Cabal Development Team";
      maintainer = "Cabal Development Team <cabal-devel@haskell.org>";
      author = "Cabal Development Team (see AUTHORS file)";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "cabal" = {
          depends  = ((((((([
            (hsPkgs.async)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.deepseq)
            (hsPkgs.echo)
            (hsPkgs.edit-distance)
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
          ] ++ (if _flags.old-bytestring
            then [
              (hsPkgs.bytestring)
              (hsPkgs.bytestring-builder)
            ]
            else [
              (hsPkgs.bytestring)
            ])) ++ (if _flags.old-directory
            then [
              (hsPkgs.directory)
              (hsPkgs.old-time)
              (hsPkgs.process)
            ]
            else [
              (hsPkgs.directory)
              (hsPkgs.process)
            ])) ++ (if _flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [
              (hsPkgs.network)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optional (_flags.debug-conflict-sets) (hsPkgs.base)) ++ pkgs.lib.optional (_flags.debug-tracetree) (hsPkgs.tracetree)) ++ pkgs.lib.optionals (_flags.monolithic) [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.edit-distance)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.pretty-show)
            (hsPkgs.random)
            (hsPkgs.tagged)
            (hsPkgs.tar)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.zlib)
          ];
          libs = pkgs.lib.optional (system.isAix) (pkgs.bsd);
        };
      };
      tests = {
        "unit-tests" = {
          depends  = ((((([
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
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
          ] ++ pkgs.lib.optional (_flags.old-directory) (hsPkgs.old-time)) ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optional (_flags.debug-conflict-sets) (hsPkgs.base)) ++ pkgs.lib.optional (_flags.debug-tracetree) (hsPkgs.tracetree);
        };
        "memory-usage-tests" = {
          depends  = ((((([
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
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
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ] ++ pkgs.lib.optional (_flags.old-directory) (hsPkgs.old-time)) ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optional (_flags.debug-conflict-sets) (hsPkgs.base)) ++ pkgs.lib.optional (_flags.debug-tracetree) (hsPkgs.tracetree);
        };
        "solver-quickcheck" = {
          depends  = ((((([
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
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
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.pretty-show)
          ] ++ pkgs.lib.optional (_flags.old-directory) (hsPkgs.old-time)) ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optional (_flags.debug-conflict-sets) (hsPkgs.base)) ++ pkgs.lib.optional (_flags.debug-tracetree) (hsPkgs.tracetree);
        };
        "integration-tests2" = {
          depends  = ((([
            (hsPkgs.async)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.edit-distance)
            (hsPkgs.filepath)
            (hsPkgs.hackage-security)
            (hsPkgs.hashable)
            (hsPkgs.HTTP)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.tar)
            (hsPkgs.time)
            (hsPkgs.zlib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tagged)
          ] ++ pkgs.lib.optional (_flags.old-bytestring) (hsPkgs.bytestring-builder)) ++ pkgs.lib.optional (_flags.old-directory) (hsPkgs.old-time)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }