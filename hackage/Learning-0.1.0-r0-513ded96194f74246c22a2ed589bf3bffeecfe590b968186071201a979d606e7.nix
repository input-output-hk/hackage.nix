{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Learning";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bogdan Penkovsky";
      maintainer = "dev () penkovsky dot com";
      author = "Bogdan Penkovsky";
      homepage = "https://github.com/masterdezign/Learning#readme";
      url = "";
      synopsis = "The most frequently used machine learning tools";
      description = "Please see the README on Github at <https://github.com/masterdezign/Learning#readme>";
      buildType = "Simple";
    };
    components = {
      "Learning" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hmatrix)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "learning-pca" = {
          depends  = [
            (hsPkgs.Learning)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
          ];
        };
        "learning-pca-advanced" = {
          depends  = [
            (hsPkgs.Learning)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "Learning-test" = {
          depends  = [
            (hsPkgs.Learning)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }