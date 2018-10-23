{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ireal";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Björn von Sydow (bjorn.von.sydow@gmail.com)";
      author = "Björn von Sydow (bjorn.von.sydow@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Real numbers and intervals with not so inefficient exact arithmetic.";
      description = "This library provides a type IReal of real numbers and intervals with arbitrary precision arithmetic,\ninstance declarations for the standard numeric classes, Eq and Ord (the two latter non-total for\ncomputability reasons). Reasonably efficient in comparison with other Haskell modules for exact\nreal arithmetic. Does not depend on non-Haskell libraries.\nThe package includes a QuickCheck test suite, documentation, and a number of small example\napplications in validated numerics.";
      buildType = "Simple";
    };
    components = {
      "ireal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }