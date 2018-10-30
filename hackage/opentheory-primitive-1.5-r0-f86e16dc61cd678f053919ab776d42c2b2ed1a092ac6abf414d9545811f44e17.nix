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
      specVersion = "1.8.0.2";
      identifier = {
        name = "opentheory-primitive";
        version = "1.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell primitives used by OpenTheory packages";
      description = "The types and values defined in this package extend those in the\nPrelude to provide the core execution platform assumed by Haskell\npackages exported from formally verified OpenTheory packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "opentheory-primitive-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }