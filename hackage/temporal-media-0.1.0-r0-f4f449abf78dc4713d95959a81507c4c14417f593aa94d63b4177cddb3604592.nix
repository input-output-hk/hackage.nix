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
        name = "temporal-media";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "data types for temporal media";
      description = "Ispired by the paper /An Algebraic Theory of Polymorphic Temporal Media/,\nPaul Hudak\n<http://haskell.cs.yale.edu/yale/papers/polymedia/hudak-RR-1259.pdf>,\nHaskore and Hommage";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }