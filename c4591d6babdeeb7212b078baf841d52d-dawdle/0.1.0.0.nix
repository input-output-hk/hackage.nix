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
        name = "dawdle";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "arnon.shimoni@gmail.com";
      author = "Arnon Shimoni";
      homepage = "https://github.com/arnons1/dawdle";
      url = "";
      synopsis = "Generates DDL suggestions based on a CSV file";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dawdle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "dawdle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.dawdle)
          ];
        };
      };
    };
  }