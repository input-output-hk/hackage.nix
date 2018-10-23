{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "yaml-light";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael <dot> ilseman <at> gmail <dot> com";
      author = "Michael Ilseman";
      homepage = "";
      url = "";
      synopsis = "A light-weight wrapper with utility functions around HsSyck";
      description = "This package provides a light-weight algebraic data type representing parsed Yaml files. It is implemented as a more conveinent wrapper around the HsSyck package, and provides utility functions as well.";
      buildType = "Simple";
    };
    components = {
      "yaml-light" = {
        depends  = [
          (hsPkgs.HsSyck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
        ];
      };
    };
  }