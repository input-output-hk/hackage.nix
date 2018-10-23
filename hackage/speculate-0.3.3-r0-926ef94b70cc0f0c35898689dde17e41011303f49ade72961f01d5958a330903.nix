{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "speculate";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela,  Colin Runciman";
      homepage = "https://github.com/rudymatela/speculate#readme";
      url = "";
      synopsis = "discovery of properties about Haskell functions";
      description = "Speculate automatically discovers laws about Haskell functions.\nGive Speculate a bunch of Haskell functions and it will discover laws like:\n\n* equations, such as @ id x == x @;\n\n* inequalities, such as @ 0 <= x * x @;\n\n* conditional equations, such as @ x \\<= 0  ==\\>  x + abs x == 0 @.";
      buildType = "Simple";
    };
    components = {
      "speculate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.leancheck)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "creason" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "engine" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "eval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "expr" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "match" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "misc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "order" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "reason" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
        "utils" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
      };
      benchmarks = {
        "plus-abs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.speculate)
          ];
        };
        "test-stats" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
          ];
        };
      };
    };
  }