{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "opentheory";
        version = "1.196";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "The standard theory library";
      description = "The standard theory library - this package was automatically generated\nfrom the OpenTheory package base-1.196";
      buildType = "Simple";
    };
    components = {
      "opentheory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
        ];
      };
      tests = {
        "opentheory-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
          ];
        };
      };
    };
  }