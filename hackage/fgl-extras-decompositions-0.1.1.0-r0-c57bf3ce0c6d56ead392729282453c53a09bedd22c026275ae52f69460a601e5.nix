{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fgl-extras-decompositions";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2013 - 2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.bioinf.uni-leipzig.de/~choener/";
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