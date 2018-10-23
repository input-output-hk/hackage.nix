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
        name = "gitHUD";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Grégory Bataille 2015";
      maintainer = "gbataille.dev@gmail.com";
      author = "Grégory Bataille";
      homepage = "http://github.com/gbataille/gitHUD#readme";
      url = "";
      synopsis = "More efficient replacement to the great git-radar";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "gitHUD" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "gitHUD" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitHUD)
          ];
        };
      };
      tests = {
        "gitHUD-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.gitHUD)
          ];
        };
      };
    };
  }