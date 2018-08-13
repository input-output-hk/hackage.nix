{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      withquickcheck = false;
      splitbase = true;
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "combinat";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Generation of various combinatorial objects.";
      description = "A collection of functions to generate combinatorial\nobjects like partitions, combinations, permutations,\nYoung tableaux, various trees, etc.";
      buildType = "Simple";
    };
    components = {
      "combinat" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.mtl)
          ] ++ pkgs.lib.optional (_flags.withquickcheck) (hsPkgs.QuickCheck)
          else [ (hsPkgs.base) ];
      };
    };
  }