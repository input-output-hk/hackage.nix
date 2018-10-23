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
        name = "Ganymede";
        version = "0.0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "black.meph@gmail.com";
      author = "Walt \"BMeph\" Rorie-Baety";
      homepage = "https://github.com/BMeph/Ganymede";
      url = "";
      synopsis = "An Io interpreter in Haskell.";
      description = "Ganymede is an Io interpreter, originally based on Martin \"\\\"vague\\\"\" Sandin's\nAmalthea, which is an Io interpreter written in OCaml. There are some\ndifferences since Amalthea is based on the description of Io found in Raphael\nFinkel's 1996 book  \"Advanced Programming Language Design\" (APLD), whereas\nGanymede is more faithful to Raph Levien's original 1989 paper.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ganymede" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }