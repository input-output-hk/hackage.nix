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
      specVersion = "1.6";
      identifier = {
        name = "Piso";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2013-2017 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "https://github.com/MedeaMelana/Piso";
      url = "";
      synopsis = "Partial isomorphisms";
      description = "Partial isomorphisms";
      buildType = "Simple";
    };
    components = {
      "Piso" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }