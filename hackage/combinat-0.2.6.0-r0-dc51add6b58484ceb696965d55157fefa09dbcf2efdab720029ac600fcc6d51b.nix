{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      withquickcheck = false;
      base4 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "combinat";
        version = "0.2.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Generation of various combinatorial objects.";
      description = "A collection of functions to generate (and if there is\na formula, count) combinatorial objects like partitions,\ncompositions, permutations, Young tableaux, various trees,\netc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (flags.withquickcheck) (hsPkgs.QuickCheck);
      };
    };
  }