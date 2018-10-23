{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "polydata-core";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/polydata-core#readme";
      url = "";
      synopsis = "Core data definitions for the \"polydata\" package";
      description = "This package, with assistance of the package [polydata](https://hackage.haskell.org/package/polydata),\nallows one to pass data, particularly functions, together with a constraint which describes how\npolymorphic that data is. This constraint can then be used in a generic way to produce quite polymorphic functions,\nfor example, a \"map\" function that works on a pair of two different types.\n\nSee [Data.Poly](https://hackage.haskell.org/package/polydata-core/docs/Data-Poly.html)\nfor a basic tutorial.\n\nThis package is separate from [polydata](https://hackage.haskell.org/package/polydata) to reduce dependencies,\nhowever if you want to do anything non-trivial you'll probably want to use the constraint manipulation tools in\n[polydata](https://hackage.haskell.org/package/polydata). However, if you have your own way of manipulating\nconstraints, you could just use this package directly and only.";
      buildType = "Simple";
    };
    components = {
      "polydata-core" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }