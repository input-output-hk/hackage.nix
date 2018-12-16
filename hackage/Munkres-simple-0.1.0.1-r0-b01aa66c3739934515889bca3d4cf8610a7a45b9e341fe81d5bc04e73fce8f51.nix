{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Munkres-simple";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jjvk2@cam.ac.uk";
      author = "Josh Kirklin";
      homepage = "";
      url = "";
      synopsis = "Simple and typesafe layer over the Munkres package.";
      description = "Simple and typesafe layer over the Munkres package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bimap)
          (hsPkgs.array)
          (hsPkgs.Munkres)
        ];
      };
    };
  }