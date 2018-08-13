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
      specVersion = "1.2";
      identifier = {
        name = "fst";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Markus Forsberg <markus@cs.chalmers.se>";
      author = "Markus Forsberg";
      homepage = "http://www.cs.chalmers.se/~markus/fstStudio/";
      url = "";
      synopsis = "Finite state transducers";
      description = "Fst is an application for construction and running of\nfinite state transducers. The application was written\npurely in Haskell, and is intended to be a tool for the\nHaskell programmer, especially for ones that develop language applications.";
      buildType = "Simple";
    };
    components = {
      "fst" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.array)
        ];
      };
      exes = { "fst" = {}; };
    };
  }