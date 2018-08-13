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
        name = "Peano";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "0slemi0@gmail.com";
      author = "Andras Slemmer, Francesco Mazzoli";
      homepage = "";
      url = "";
      synopsis = "simple Peano numbers";
      description = "Peano numbers without extra fluff, mainly for type level computations in promoted form";
      buildType = "Simple";
    };
    components = {
      "Peano" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }