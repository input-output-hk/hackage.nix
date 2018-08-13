{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reflection-extras";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff, Edward Kmett, Austin Seipp";
      homepage = "http://github.com/jfischoff/reflection-extras";
      url = "";
      synopsis = "Utilities for the reflection package";
      description = "This package is meant to implement the constraint machinary for the\nreflection package. It has been primarly ripped from the Constraint example\nof the reflection package with some extension.\n\nThe implementation is also influenced by Austin Seipp's\n<https://www.fpcomplete.com/user/thoughtpolice/using-reflection article>\non the reflection package";
      buildType = "Simple";
    };
    components = {
      "reflection-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.reflection)
          (hsPkgs.lens)
          (hsPkgs.constraints)
          (hsPkgs.aeson)
        ];
      };
    };
  }