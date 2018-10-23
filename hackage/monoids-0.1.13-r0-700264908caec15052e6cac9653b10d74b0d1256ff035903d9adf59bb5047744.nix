{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "monoids";
        version = "0.1.13";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader";
      url = "";
      synopsis = "Lots of Monoids";
      description = "Lots of Monoids";
      buildType = "Simple";
    };
    components = {
      "monoids" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.fingertree)
          (hsPkgs.bytestring)
          (hsPkgs.category-extras)
          (hsPkgs.parallel)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.bitset)
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
        ];
      };
    };
  }