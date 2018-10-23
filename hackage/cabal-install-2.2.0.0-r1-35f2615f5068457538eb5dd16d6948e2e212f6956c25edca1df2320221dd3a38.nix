{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      native-dns = true;
      debug-expensive-assertions = false;
      debug-conflict-sets = false;
      debug-tracetree = false;
      lib = false;
      monolithic = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cabal-install";
        version = "2.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2003-2018, Cabal Development Team";
      maintainer = "Cabal Development Team <cabal-devel@haskell.org>";
      author = "Cabal Development Team (see AUTHORS file)";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.\n\nThis package only provides an executable and cannot be used as a\nlibrary (ignore the module listing below.)";
      buildType = "Custom";
    };
    components = {
      "cabal-install" = {
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
          (hsPkgs.echo)
          (hsPkgs.edit-distance)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.HTTP)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.network)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.tar)
          (hsPkgs.time)
          (hsPkgs.zlib)
          (hsPkgs.hackage-security)
        ] ++ pkgs.lib.optionals (flags.native-dns) (if system.isWindows
          then [ (hsPkgs.windns) ]
          else [
            (hsPkgs.resolv)
          ])) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ pkgs.lib.optional (flags.debug-conflict-sets) (hsPkgs.base)) ++ pkgs.lib.optional (flags.debug-tracetree) (hsPkgs.tracetree);
      };
      exes = {
        "cabal" = {
          depends  = (if flags.lib
            then [
              (hsPkgs.cabal-install)
              (hsPkgs.Cabal)
              (hsPkgs.base)
              (hsPkgs.directory)
              (hsPkgs.filepath)
            ]
            else ((([
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
              (hsPkgs.echo)
              (hsPkgs.edit-distance)
              (hsPkgs.filepath)
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
              (hsPkgs.hackage-security)
            ] ++ pkgs.lib.optionals (flags.native-dns) (if system.isWindows
              then [ (hsPkgs.windns) ]
              else [
                (hsPkgs.resolv)
              ])) ++ (if system.isWindows
              then [ (hsPkgs.Win32) ]
              else [
                (hsPkgs.unix)
              ])) ++ pkgs.lib.optional (flags.debug-conflict-sets) (hsPkgs.base)) ++ pkgs.lib.optional (flags.debug-tracetree) (hsPkgs.tracetree)) ++ pkgs.lib.optionals (flags.monolithic) [
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
            (hsPkgs.hashable)
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
          libs = pkgs.lib.optional (system.isAix) (pkgs."bsd");
        };
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.cabal-install)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.tar)
            (hsPkgs.time)
            (hsPkgs.zlib)
            (hsPkgs.network-uri)
            (hsPkgs.network)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            (hsPkgs.QuickCheck)
          ];
        };
        "memory-usage-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-install)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "solver-quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-install)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.random)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.pretty-show)
          ];
        };
        "integration-tests2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-install)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.edit-distance)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }