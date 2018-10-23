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
        name = "quickcheck-report";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Customizable reports for quickcheck properties";
      description = "Add some flexibility to the creation of reports from sets of quickcheck properties";
      buildType = "Simple";
    };
    components = {
      "quickcheck-report" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.QuickCheck)
          (hsPkgs.th-printf)
        ];
      };
    };
  }