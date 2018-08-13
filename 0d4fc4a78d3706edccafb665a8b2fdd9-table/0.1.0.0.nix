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
        name = "table";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/table";
      url = "";
      synopsis = "Simple tool to generate tables from DSV input";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "table" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.split)
            (hsPkgs.process)
            (hsPkgs.csv)
          ];
        };
      };
    };
  }