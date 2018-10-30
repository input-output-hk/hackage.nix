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
      specVersion = "1.2.3";
      identifier = {
        name = "relacion";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Leonel Fonseca, 2010";
      maintainer = "leonelfl (google mail)";
      author = "Leonel Fonseca";
      homepage = "not available";
      url = "";
      synopsis = "A relation data structure.";
      description = "A library to model relationships between two objects that are subclasses of\nOrd.\n\nInstead using a Map structure we use a two Maps that allows\nfast searching either by the key element or the value element.\n\nEach of Map is between an element and a set of values.\nThus careful coordination of operations is required.\n\nThis library lacks of extensive testing, formal testing or automated testing.\nAlso in comparison to Data.Set or Data.Map (which provide the underlying\ninfrastructure used) there are some missing methods.\n\nAn example of use is the include source file T02_Relacion.hs.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }