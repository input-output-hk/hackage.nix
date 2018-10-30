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
        name = "fitspec";
        version = "0.4.1";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.leancheck)
          (hsPkgs.cmdargs)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "mutate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "showmutable" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "derive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "utils" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
      };
      benchmarks = {
        "avltrees" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "bools" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "digraphs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "heaps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "id" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "list" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "mergeheaps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "pretty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
            (hsPkgs.pretty)
          ];
        };
        "sets" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "setsofsets" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "sieve" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "sorting" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
        "spring" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }