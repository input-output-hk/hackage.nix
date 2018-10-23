{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "peg";
        version = "0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dustin.deweese@gmail.com";
      author = "Dustin DeWeese";
      homepage = "http://github.com/HackerFoo/peg";
      url = "";
      synopsis = "a lazy non-deterministic concatenative programming language";
      description = "Peg is a lazy non-deterministic concatenative programming language inspired by Haskell, Joy, and Prolog.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "peg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logict)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }