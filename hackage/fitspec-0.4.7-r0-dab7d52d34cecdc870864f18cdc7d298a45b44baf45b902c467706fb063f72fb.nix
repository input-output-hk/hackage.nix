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
      specVersion = "1.18";
      identifier = {
        name = "fitspec";
        version = "0.4.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela,  Colin Runciman";
      homepage = "https://github.com/rudymatela/fitspec#readme";
      url = "";
      synopsis = "refining property sets for testing Haskell programs";
      description = "FitSpec provides automated assistance in the task of refining test properties\nfor Haskell functions.\n\nFitSpec tests mutant variations of functions under test against a given\nproperty set, recording any surviving mutants that pass all tests. FitSpec\nthen reports:\n\n* surviving mutants: indicating incompleteness of properties,\nprompting the user to amend a property or to add a new one;\n\n* conjectures: indicating redundancy in the property set,\nprompting the user to remove properties so to reduce the cost of testing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.leancheck)
          (hsPkgs.cmdargs)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "mutate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.fitspec)
          ];
        };
        "showmutable" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.fitspec)
          ];
        };
        "derive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.fitspec)
          ];
        };
        "utils" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.fitspec)
          ];
        };
      };
      benchmarks = {
        "avltrees" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "bools" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "digraphs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "heaps" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "id" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "list" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "mergeheaps" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "pretty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
            (hsPkgs.pretty)
          ];
        };
        "sets" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "setsofsets" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "sieve" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "sorting" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
        "spring" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fitspec)
          ];
        };
      };
    };
  }