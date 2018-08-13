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
        name = "Grafos";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "porcoaranha83@gmail.com";
      author = "jppianta83";
      homepage = "";
      url = "";
      synopsis = "Grafos Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "Grafos" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }