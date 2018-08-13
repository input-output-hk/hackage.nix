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
        name = "uxadt";
        version = "0.0.13.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Universal (cross-language) extensible representation for algebraic data type instances.";
      description = "A library that supports a universal, cross-platform embedded representation for algebraic data type (ADT) values.";
      buildType = "Simple";
    };
    components = {
      "uxadt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.json)
          (hsPkgs.mtl)
          (hsPkgs.MissingH)
        ];
      };
    };
  }