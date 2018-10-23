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
        name = "test-framework-doctest";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sakariij@gmail.com";
      author = "Sakari Jokinen";
      homepage = "";
      url = "";
      synopsis = "Test.Framework wrapper for DocTest";
      description = "Test.Framework wrapper for DocTest";
      buildType = "Simple";
    };
    components = {
      "test-framework-doctest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.doctest)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.haddock)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.doctest)
            (hsPkgs.haddock)
          ];
        };
      };
    };
  }