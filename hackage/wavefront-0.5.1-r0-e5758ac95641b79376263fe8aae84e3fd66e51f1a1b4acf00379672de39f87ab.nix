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
        name = "wavefront";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/wavefront";
      url = "";
      synopsis = "Wavefront OBJ loader";
      description = "A Wavefront OBJ loader. Currently supports polygonal information. More could\nbe added if needed (like curves and surface) if people contribute. Feel free\nto help!";
      buildType = "Simple";
    };
    components = {
      "wavefront" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.dlist)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
    };
  }