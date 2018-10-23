{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      withquickcheck = false;
      splitbase = true;
      base4 = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "combinat";
        version = "0.2.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011 Balazs Komuves";
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
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.transformers)
          ] ++ pkgs.lib.optional (flags.withquickcheck) (hsPkgs.QuickCheck)
          else [ (hsPkgs.base) ];
      };
    };
  }