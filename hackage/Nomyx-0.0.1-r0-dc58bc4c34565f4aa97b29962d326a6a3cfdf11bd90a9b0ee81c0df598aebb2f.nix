{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Nomyx";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "";
      url = "";
      synopsis = "A Nomic game in haskell, featuring automatic, machine-executed rules written by the players";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed! The original (paper) game: www.nomic.net";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Nomyx" = {
          depends  = [
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.Nomyx-Rules)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.eprocess)
            (hsPkgs.filepath)
            (hsPkgs.happstack-server)
            (hsPkgs.hint)
            (hsPkgs.hint-server)
            (hsPkgs.hslogger)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.reform)
            (hsPkgs.reform-blaze)
            (hsPkgs.reform-happstack)
            (hsPkgs.regular)
            (hsPkgs.safe)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.web-routes)
            (hsPkgs.web-routes-happstack)
            (hsPkgs.web-routes-regular)
            (hsPkgs.web-routes-th)
          ];
        };
      };
    };
  }