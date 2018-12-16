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
        name = "solve";
        version = "1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Solving simple games";
      description = "A library for solving and analyzing finite two-player games (e.g.,\nFox & Hounds).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "solve" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "solve-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }