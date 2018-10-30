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
      specVersion = "1.10";
      identifier = {
        name = "templater";
        version = "0.0.3.0";
      };
      license = "MIT";
      copyright = "Copyright (C) 2015 Geraud Boyer";
      maintainer = "Geraud Boyer <geraud@gmail.com>";
      author = "Geraud Boyer";
      homepage = "https://github.com/geraud/templater";
      url = "";
      synopsis = "Simple string templater";
      description = "Simple string templater";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.templater)
            (hsPkgs.hspec)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }