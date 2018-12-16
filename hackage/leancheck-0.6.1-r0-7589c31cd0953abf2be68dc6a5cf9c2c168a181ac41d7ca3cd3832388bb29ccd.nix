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
        name = "leancheck";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/leancheck#readme";
      url = "";
      synopsis = "Cholesterol-free property-based testing";
      description = "LeanCheck is a simple enumerative property-based testing library.\n\nProperties are defined as Haskell functions returning a boolean value which\nshould be true for all possible choices of argument values.    LeanCheck\napplies enumerated argument values to these properties in search for a\ncounterexample.  Properties can be viewed as parameterized unit tests.\n\nLeanCheck works by producing tiers of test values: a possibly infinite list\nof finite sublists of same-and-increasingly-sized values.\n\nLeanCheck has lean core with only 180 lines of Haskell code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ];
        };
        "types" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ];
        };
        "tiers" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ];
        };
        "operators" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ];
        };
        "derive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ];
        };
        "error" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }