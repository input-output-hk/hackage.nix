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
      specVersion = "1.10";
      identifier = {
        name = "HFrequencyQueue";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bellaz89@gmail.com";
      author = "Andrea Bellandi";
      homepage = "https://github.com/Bellaz/HfrequencyList";
      url = "";
      synopsis = "A Queue with a random (weighted) pick function";
      description = "This package provide a queue that use an internal random generator\nto return a random element. The probability that a certain element\ncome out is controlled by an Int that is the relative probability\nof that element. IT USE GCC WITH C++11!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.c-storable-deriving)
        ];
        libs = [ (pkgs."stdc++") ];
      };
    };
  }