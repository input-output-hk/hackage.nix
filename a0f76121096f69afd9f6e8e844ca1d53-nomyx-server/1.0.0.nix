{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "nomyx-server";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "nomyx-server" = {
          depends  = [
            (hsPkgs.nomyx-core)
            (hsPkgs.nomyx-language)
            (hsPkgs.nomyx-web)
            (hsPkgs.nomyx-library)
            (hsPkgs.nomyx-api)
            (hsPkgs.imprevu)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.safe)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.lens)
            (hsPkgs.hslogger)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nomyx-server)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }