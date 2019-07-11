{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-test-utils"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brandon Chinn <brandon@leapyear.io>";
      author = "Brandon Chinn <brandon@leapyear.io>";
      homepage = "https://github.com/LeapYear/th-test-utils#readme";
      url = "";
      synopsis = "Utility functions for testing Template Haskell code";
      description = "Utility functions for testing Template Haskell code, including\nfunctions for testing failures in the Q monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "th-test-utils-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.template-haskell)
            (hsPkgs.th-test-utils)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }