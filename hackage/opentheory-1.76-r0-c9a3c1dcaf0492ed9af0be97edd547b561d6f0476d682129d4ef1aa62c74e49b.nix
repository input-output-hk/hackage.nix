{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.6";
      identifier = {
        name = "opentheory";
        version = "1.76";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "The Haskell base";
      description = "The Haskell base - automatically generated from the opentheory package\nhaskell-1.76";
      buildType = "Simple";
    };
    components = {
      "opentheory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
        ];
      };
      exes = {
        "opentheory-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
          ];
        };
      };
    };
  }