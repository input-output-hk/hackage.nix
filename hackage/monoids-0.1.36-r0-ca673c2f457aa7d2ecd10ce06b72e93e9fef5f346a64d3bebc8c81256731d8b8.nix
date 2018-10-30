{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
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
    };
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
      "library" = {
        depends  = (((((((([
          (hsPkgs.base)
          (hsPkgs.category-extras)
          (hsPkgs.array)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (flags.bytestring) (hsPkgs.bytestring)) ++ pkgs.lib.optional (flags.fingertree) (hsPkgs.fingertree)) ++ pkgs.lib.optional (flags.parallel) (hsPkgs.parallel)) ++ pkgs.lib.optional (flags.text) (hsPkgs.text)) ++ pkgs.lib.optional (flags.stm) (hsPkgs.stm)) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.QuickCheck)) ++ pkgs.lib.optional (flags.reflection) (hsPkgs.reflection)) ++ pkgs.lib.optional (flags.parsec) (hsPkgs.parsec)) ++ pkgs.lib.optional (flags.mtl) (hsPkgs.mtl);
      };
    };
  }