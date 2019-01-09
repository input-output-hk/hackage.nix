{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      llvm = false;
      polyparse = true;
      hxtrelaxng = true;
      narrownumbers = false;
      threaded = true;
      unix = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "bishbosh"; version = "0.0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2018 Dr. Alistair Ward";
      maintainer = "mailto:bishbosh@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.eu/BishBosh/bishbosh.html";
      url = "";
      synopsis = "Plays chess.";
      description = "A chess-game which can be rendered in a terminal (emulator) in raw ASCII, or used as an engine by xboard.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.extra)
          (hsPkgs.factory)
          (hsPkgs.filepath)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.toolshed)
          ] ++ (if flags.polyparse
          then [ (hsPkgs.polyparse) ]
          else [ (hsPkgs.parsec) ]);
        };
      exes = {
        "bishbosh" = {
          depends = (([
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bishbosh)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.factory)
            (hsPkgs.filepath)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.toolshed)
            ] ++ (if flags.polyparse
            then [ (hsPkgs.polyparse) ]
            else [ (hsPkgs.parsec) ])) ++ (if flags.hxtrelaxng
            then [ (hsPkgs.hxt-relaxng) ]
            else [
              (hsPkgs.parsec)
              ])) ++ (pkgs.lib).optional (flags.unix) (hsPkgs.unix);
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bishbosh)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.toolshed)
            ] ++ (if flags.polyparse
            then [ (hsPkgs.polyparse) ]
            else [ (hsPkgs.parsec) ]);
          };
        };
      };
    }