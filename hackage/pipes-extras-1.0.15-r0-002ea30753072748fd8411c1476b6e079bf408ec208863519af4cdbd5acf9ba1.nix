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
        name = "pipes-extras";
        version = "1.0.15";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Extra utilities for pipes";
      description = "This package holds miscellaneous utilities related to the @pipes@\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "pipes-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.foldl)
          (hsPkgs.transformers)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes-extras)
            (hsPkgs.pipes)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }