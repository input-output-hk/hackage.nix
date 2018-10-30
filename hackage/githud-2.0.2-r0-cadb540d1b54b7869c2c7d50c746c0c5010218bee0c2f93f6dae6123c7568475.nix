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
        name = "githud";
        version = "2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Grégory Bataille 2015-2016";
      maintainer = "gregory.bataille@gmail.com";
      author = "Grégory Bataille";
      homepage = "http://github.com/gbataille/gitHUD#readme";
      url = "";
      synopsis = "More efficient replacement to the great git-radar";
      description = "Please see README.md (used to be gitHUD)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "githud" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.githud)
          ];
        };
      };
      tests = {
        "githud-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.githud)
          ];
        };
      };
    };
  }