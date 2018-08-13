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
        name = "Zwaluw";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2010 Sjoerd Visscher, Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Sjoerd Visscher, Martijn van Steenbergen";
      homepage = "https://github.com/MedeaMelana/Zwaluw";
      url = "";
      synopsis = "Combinators for bidirectional URL routing";
      description = "Combinators for bidirectional URL routing";
      buildType = "Simple";
    };
    components = {
      "Zwaluw" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }