{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "test-framework-quickcheck2";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/test-framework";
      url = "";
      synopsis = "QuickCheck2 support for the test-framework package.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "test-framework-quickcheck2" = {
        depends  = [
          (hsPkgs.test-framework)
          (hsPkgs.QuickCheck)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }