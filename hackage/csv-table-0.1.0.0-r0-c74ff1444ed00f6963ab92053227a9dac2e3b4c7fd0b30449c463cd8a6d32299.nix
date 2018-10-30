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
        name = "csv-table";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala";
      homepage = "https://github.com/ucsd-progsys/csv-table";
      url = "";
      synopsis = "Scripts for manipulating tables stored as CSV files";
      description = "Scripts for manipulating tables, e.g. filter, join, etc. stored as CSV files";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.csv)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
    };
  }