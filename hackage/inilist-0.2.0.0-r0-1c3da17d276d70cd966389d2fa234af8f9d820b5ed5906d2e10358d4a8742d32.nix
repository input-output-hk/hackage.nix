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
        name = "inilist";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwm@mired.org";
      author = "Mike Meyer";
      homepage = "https://chiselapp.com/user/mwm/repository/inilist";
      url = "";
      synopsis = "Processing for .ini files with duplicate sections and options";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.trifecta)
          (hsPkgs.bifunctors)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "inilist-unittest" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.testpack)
            (hsPkgs.base)
            (hsPkgs.inilist)
            (hsPkgs.safe)
            (hsPkgs.trifecta)
            (hsPkgs.deepseq)
            (hsPkgs.HUnit)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bifunctors)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }