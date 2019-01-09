{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "speculate"; version = "0.2.3"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.leancheck)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          ];
        };
      tests = {
        "expr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            ];
          };
        };
      benchmarks = {
        "plus-abs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }