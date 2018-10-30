{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "monoids";
        version = "0.1.2";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.fingertree)
          (hsPkgs.bytestring)
          (hsPkgs.category-extras)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.bitset)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }