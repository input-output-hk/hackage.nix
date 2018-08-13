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
      specVersion = "1.10";
      identifier = {
        name = "symon";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2016 Simon Michael";
      maintainer = "simon@joyful.com";
      author = "Simon Michael";
      homepage = "https://github.com/simonmichael/symon";
      url = "";
      synopsis = "Minimal implementation(s) of the classic electronic memory game.";
      description = "This was an attempt to submit a ludum dare entry in 2h.\nIt is also a nice kata (exercise) for practising haskell game development\nand/or demonstrating different libraries and approaches.\nImprovements, new implementations and co-developers are welcome.\n\nCurrently there is one implementation, a minimal ansi command line one.\nSee README for more.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "symon-ansi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.monad-loops)
            (hsPkgs.random)
          ];
        };
      };
    };
  }