{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small-base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Diff";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.clover@gmail.com";
      author = "Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "O(ND) diff algorithm in haskell.";
      description = "Implementation of the standard diff algorithm, and utilities for pretty printing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.pretty)
        ];
      };
    };
  }