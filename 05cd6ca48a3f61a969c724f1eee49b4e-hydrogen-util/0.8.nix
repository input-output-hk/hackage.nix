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
      specVersion = "1.14";
      identifier = {
        name = "hydrogen-util";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-util/";
      url = "";
      synopsis = "Hydrogen Tools";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hydrogen-util" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hydrogen-prelude)
          (hsPkgs.parsec)
          (hsPkgs.time)
        ];
      };
    };
  }