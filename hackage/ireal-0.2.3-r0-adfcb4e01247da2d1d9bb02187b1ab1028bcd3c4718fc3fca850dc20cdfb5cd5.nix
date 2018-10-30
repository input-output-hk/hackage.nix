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
      specVersion = "1.6";
      identifier = {
        name = "ireal";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Björn von Sydow (bjorn.von.sydow@gmail.com)";
      author = "Björn von Sydow (bjorn.von.sydow@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Real numbers and intervals with relatively efficient exact arithmetic.";
      description = "This library provides a type IReal of real numbers and intervals with arbitrary precision arithmetic,\ninstance declarations for the standard numeric classes, Eq and Ord (the two latter non-total for\ncomputability reasons). Significantly more efficient than other Haskell modules for exact\nreal arithmetic that we are aware of. Does not depend on non-Haskell libraries.\nA QuickCheck test suite, documentation, and a number of small example\napplications in validated numerics are available at <https://github.com/sydow/ireal.git>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }