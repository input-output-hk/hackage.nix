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
        name = "fgl-extras-decompositions";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Graph decomposition algorithms";
      description = "Graph decompositions of fgl graphs. This library is rather\nexperimental.\n\nCurrently:\n\n- ear decomposition\n\n\n\nPatches and ideas welcome.";
      buildType = "Simple";
    };
    components = {
      "fgl-extras-decompositions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fgl)
        ];
      };
    };
  }