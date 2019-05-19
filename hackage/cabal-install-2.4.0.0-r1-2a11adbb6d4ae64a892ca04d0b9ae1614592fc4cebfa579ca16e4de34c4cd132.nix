{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      native-dns = true;
      debug-expensive-assertions = false;
      debug-conflict-sets = false;
      debug-tracetree = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-install"; version = "2.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2018, Cabal Development Team";
      maintainer = "Cabal Development Team <cabal-devel@haskell.org>";
      author = "Cabal Development Team (see AUTHORS file)";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        ];
      };
    components = {
      exes = {
        "cabal" = {
          depends = ((([
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
            (hsPkgs.text)
            (hsPkgs.zip-archive)
            (hsPkgs.parsec)
            ] ++ (pkgs.lib).optionals (flags.native-dns) (if system.isWindows
            then [ (hsPkgs.windns) ]
            else [ (hsPkgs.resolv) ])) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
              ])) ++ (pkgs.lib).optional (flags.debug-conflict-sets) (hsPkgs.base)) ++ (pkgs.lib).optional (flags.debug-tracetree) (hsPkgs.tracetree);
          libs = (pkgs.lib).optional (system.isAix) (pkgs."bsd");
          };
        };
      };
    }