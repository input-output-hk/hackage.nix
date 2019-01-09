{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "tasty-leancheck"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/tasty-leancheck#readme";
      url = "";
      synopsis = "LeanCheck support for the Tasty test framework.";
      description = "LeanCheck support for the Tasty test framework.\n\nThis package can be used to incorporate LeanCheck tests into Tasty test\nsuites by means of the @Test.Tasty.LeanCheck.testProperty@ function.\n\nPlease see the Haddock documentation and README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.tasty) (hsPkgs.leancheck) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.leancheck)
            (hsPkgs.tasty-leancheck)
            ];
          };
        };
      };
    }