{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "hs-pgms";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Bertram Felgenhauer";
      maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Programmer's Mine Sweeper in Haskell";
      description = "This package allows people to code Minesweeper strategies in Haskell\nand run them in a graphical UI.\nInspired by <http://www.ccs.neu.edu/home/ramsdell/pgms/index.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.MonadPrompt)
          (hsPkgs.mtl)
        ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "hs-pgms" = {
          depends  = [
            (hsPkgs.MonadPrompt)
            (hsPkgs.glib)
            (hsPkgs.gtk)
          ] ++ (if flags.split-base
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.mtl)
              (hsPkgs.random)
              (hsPkgs.directory)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.mtl)
            ]);
        };
      };
    };
  }