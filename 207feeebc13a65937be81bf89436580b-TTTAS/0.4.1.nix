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
      specVersion = "1.2.3";
      identifier = {
        name = "TTTAS";
        version = "0.4.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/TTTAS";
      url = "";
      synopsis = "Typed Transformations of Typed Abstract Syntax";
      description = "Library for Typed Transformations of Typed Abstract Syntax";
      buildType = "Simple";
    };
    components = {
      "TTTAS" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }