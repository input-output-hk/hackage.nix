{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hspec-test-framework"; version = "0.0.0"; };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "Run test-framework tests with Hspec";
      description = "A `test-framework` compatibility layer on top of Hspec, it\nallows you to run `test-framework` tests with Hspec\nunmodified.\n\nAll that is required is to remove\n\n* `test-framework`\n\n* `test-framework-quickcheck2`\n\n* `test-framework-hunit`\n\n* `test-framework-th`\n\nfrom the `build-depends` section of your cabal file and add\n\n* `hspec-test-framework`\n\n* `hspec-test-framework-th`\n\nin theire place.\n\nNOTE: The packages `hspec-test-framework` and\n`hspec-test-framework-th` are hidden by default, so that they\ndo not interfere with an installed version of\n`test-framework`.  If you want to use them with e.g. `ghci`,\nyou have to pass the command-line flags\n@-packagehspec-test-framework -packagehspec-test-framework-th@\nto GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }