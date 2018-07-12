{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Nomyx";
          version = "0.7.4";
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
          "Nomyx" = {
            depends  = [
              hsPkgs.Nomyx-Core
              hsPkgs.Nomyx-Language
              hsPkgs.Nomyx-Web
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.hint-server
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.safe
              hsPkgs.stm
              hsPkgs.time
            ];
          };
        };
      };
    }