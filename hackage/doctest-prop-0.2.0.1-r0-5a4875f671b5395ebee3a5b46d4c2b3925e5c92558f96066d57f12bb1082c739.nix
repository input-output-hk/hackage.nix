{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "doctest-prop"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "Allow QuickCheck-style property testing within doctest.";
      description = "__Please use    <https://hackage.haskell.org/package/doctest doctest>            that supports            <https://github.com/sol/doctest#quickcheck-properties  QuickCheck properties>.__\n\nThis package allows you to write QuickCheck properties and HUnit\nassertions within doctest, using functions that keep silence when\ntest succeeds and print out the test outputs otherwise.\n\nTo enjoy behavior driven development in Haskell, first import\n@Test.DocTest.Prop@, and use @prop@, @propWith@ and @unit@ to write\nin-place tests. For more details, please refer to examples in the\nmodule @Test.DocTest.Prop@ .";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.HUnit) (hsPkgs.QuickCheck) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }