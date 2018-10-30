{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tasty-fail-fast";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/MichaelXavier/tasty-fail-fast#readme";
      url = "";
      synopsis = "Adds the ability to fail a tasty test suite on first test failure";
      description = "tasty-fail-fast wraps any ingredient to fail as soon as the first test fails. For example:\n\n@\ndefaultMainWithIngredients (map failFast defaultIngredients) tests\n@\n\nYour test suite will now get a @--fail-fast@ flag.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tasty)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-fail-fast)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-tap)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }