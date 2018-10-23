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
        name = "cmd-item";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "Copyright (C) 2015 Geraud Boyer";
      maintainer = "Geraud Boyer <geraud@gmail.com>";
      author = "Geraud Boyer";
      homepage = "https://github.com/geraud/cmd-item";
      url = "";
      synopsis = "Library to compose and reuse command line fragments";
      description = "Library to compose and reuse command line fragments";
      buildType = "Simple";
    };
    components = {
      "cmd-item" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.templater)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmd-item)
            (hsPkgs.hspec)
            (hsPkgs.hspec-laws)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
          ];
        };
      };
    };
  }