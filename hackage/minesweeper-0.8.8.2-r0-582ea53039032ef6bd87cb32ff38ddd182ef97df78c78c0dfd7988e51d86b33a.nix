{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "minesweeper";
        version = "0.8.8.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divip@aszt.inf.elte.hu";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Minesweeper game which is always solvable without guessing";
      description = "Minesweeper game which is always solvable without guessing.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "minesweeper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.binary)
            (hsPkgs.derive)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.glade)
          ] ++ pkgs.lib.optionals (flags.tests) [
            (hsPkgs.numeric-prelude)
            (hsPkgs.lazysmallcheck)
          ];
        };
      };
    };
  }