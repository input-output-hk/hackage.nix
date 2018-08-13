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
        version = "0.3.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Arthur Baars <abaars@iti.upv.es>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/TTTAS";
      url = "";
      synopsis = "Typed Transformations of Typed Abstract Syntax";
      description = "";
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