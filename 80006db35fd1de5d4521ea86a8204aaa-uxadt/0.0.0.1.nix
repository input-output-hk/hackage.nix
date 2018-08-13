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
        version = "0.0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Cross-language extensible representation for algebraic data types.";
      description = "Universal (cross-language) extensible representation for algebraic data type instances.";
      buildType = "Simple";
    };
    components = {
      "uxadt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MissingH)
        ];
      };
    };
  }