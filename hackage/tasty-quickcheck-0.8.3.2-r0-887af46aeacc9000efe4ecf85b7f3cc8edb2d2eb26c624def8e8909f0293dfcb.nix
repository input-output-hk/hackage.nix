{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      old-quickcheck = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tasty-quickcheck";
        version = "0.8.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "http://documentup.com/feuerbach/tasty";
      url = "";
      synopsis = "QuickCheck support for the Tasty test framework.";
      description = "QuickCheck support for the Tasty test framework.";
      buildType = "Simple";
    };
    components = {
      "tasty-quickcheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.tasty)
        ] ++ (if flags.old-quickcheck
          then [
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.QuickCheck) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.pcre-light)
          ];
        };
      };
    };
  }