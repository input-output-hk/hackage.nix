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
      specVersion = "1.6";
      identifier = {
        name = "linda";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Lennart Schmitt 2011";
      maintainer = "lennart...schmitt@<nospam>gmail.com";
      author = "Lennart Schmitt";
      homepage = "";
      url = "";
      synopsis = "LINear Discriminant Analysis";
      description = "This package (mainly the module LDA) implements the linear discriminant analysis.\nIt provides both data classification (according to Fisher) and data analysis (by discriminant criteria).\n\nCaused by the usage of the hmatrix package this package needs LAPACK too.\nSee INSTALL file for more introductions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.HUnit)
        ];
      };
    };
  }