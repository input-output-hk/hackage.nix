{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tasty-tap";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "(C) 2015 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "https://github.com/michaelxavier/tasty-tap";
      url = "";
      synopsis = "TAP (Test Anything Protocol) Version 13 formatter for tasty";
      description = "A tasty ingredient to output test results in TAP 13 format.";
      buildType = "Simple";
    };
    components = {
      "tasty-tap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tasty)
          (hsPkgs.stm)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-tap)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }