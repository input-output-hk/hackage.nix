{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      withquickcheck = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "combinat";
        version = "0.2.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2015 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Generate and manipulate various combinatorial objects.";
      description = "A collection of functions to generate, count, manipulate\nand visualize all kinds of combinatorial objects like\npartitions, compositions, trees, permutations, braids,\nYoung tableaux, and so on.";
      buildType = "Simple";
    };
    components = {
      "combinat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (_flags.withquickcheck) (hsPkgs.QuickCheck);
      };
    };
  }