{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      bytestring = true;
      fingertree = true;
      parallel = true;
      stm = true;
      quickcheck = true;
      text = true;
      reflection = true;
      parsec = true;
      mtl = true;
      overloaded-strings = true;
      optimize = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "monoids";
        version = "0.1.36";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader";
      url = "";
      synopsis = "Monoids, specialized containers and a general map/reduce framework";
      description = "Monoids, specialized containers and a general map/reduce framework";
      buildType = "Simple";
    };
    components = {
      "monoids" = {
        depends  = (((((((([
          (hsPkgs.base)
          (hsPkgs.category-extras)
          (hsPkgs.array)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (_flags.bytestring) (hsPkgs.bytestring)) ++ pkgs.lib.optional (_flags.fingertree) (hsPkgs.fingertree)) ++ pkgs.lib.optional (_flags.parallel) (hsPkgs.parallel)) ++ pkgs.lib.optional (_flags.text) (hsPkgs.text)) ++ pkgs.lib.optional (_flags.stm) (hsPkgs.stm)) ++ pkgs.lib.optional (_flags.quickcheck) (hsPkgs.QuickCheck)) ++ pkgs.lib.optional (_flags.reflection) (hsPkgs.reflection)) ++ pkgs.lib.optional (_flags.parsec) (hsPkgs.parsec)) ++ pkgs.lib.optional (_flags.mtl) (hsPkgs.mtl);
      };
    };
  }