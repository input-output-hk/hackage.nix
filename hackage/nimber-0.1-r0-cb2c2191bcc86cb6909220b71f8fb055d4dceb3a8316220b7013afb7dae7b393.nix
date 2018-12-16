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
        name = "nimber";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "phurst@mit.edu";
      author = "Patrick Hurst";
      homepage = "";
      url = "";
      synopsis = "An implementation of (finite) nimbers";
      description = "This library provides a method to do arithmetic on\nnimbers, which may be considered an alternative field\nover the non-negative integers (the general case of\ntransfinite ordinal nimbers is not implementented.)\nNote that division is extremely slow at this point,\ndue to the lack of a closed-form implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-memocombinators)
          (hsPkgs.containers)
        ];
      };
    };
  }