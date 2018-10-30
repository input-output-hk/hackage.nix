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
        name = "SimpleTableGenerator";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "klntsky@openmailbox.org";
      author = "klntsky";
      homepage = "";
      url = "";
      synopsis = "Simple table generator";
      description = "Pass a 2D-list of strings and get a single string with table contents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
      tests = {
        "test-main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.SimpleTableGenerator)
          ];
        };
      };
    };
  }