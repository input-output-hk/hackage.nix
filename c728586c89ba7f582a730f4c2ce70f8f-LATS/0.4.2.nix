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
        name = "LATS";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 guaraqe";
      maintainer = "guaraqe@openmailbox.org";
      author = "guaraqe";
      homepage = "http://github.com/guaraqe/lats#readme";
      url = "";
      synopsis = "Linear Algebra on Typed Spaces";
      description = "Please see README.org";
      buildType = "Simple";
    };
    components = {
      "LATS" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraint-classes)
          (hsPkgs.hmatrix)
          (hsPkgs.semigroups)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."openblas") ];
      };
    };
  }