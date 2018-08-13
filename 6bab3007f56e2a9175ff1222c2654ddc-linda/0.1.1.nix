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
      specVersion = "1.2";
      identifier = {
        name = "linda";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Lennart Schmitt";
      maintainer = "lennart...schmitt@<nospam>gmail.com";
      author = "Lennart Schmitt";
      homepage = "";
      url = "";
      synopsis = "LINear Discriminant Analysis";
      description = "This package (mainly the module LDA) implements the linear discriminant analysis. It provides both data classification (according to Fisher) and data analysis (by discriminant criteria).";
      buildType = "Simple";
    };
    components = {
      "linda" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hstats)
          (hsPkgs.hmatrix)
          (hsPkgs.HUnit)
        ];
      };
    };
  }