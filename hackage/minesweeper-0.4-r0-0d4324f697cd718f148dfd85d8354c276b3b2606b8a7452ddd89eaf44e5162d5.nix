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
      specVersion = "1.4";
      identifier = {
        name = "minesweeper";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divip@aszt.inf.elte.hu";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Minesweeper game which is always solvable without guessing";
      description = "Minesweeper game which is always solvable without guessing.\n\nTODO list:\n\n* Source code documentation and improvement\n\n* Implement the score table.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "minesweeper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.glade)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
          ];
        };
      };
    };
  }