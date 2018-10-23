{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "latex-function-tables";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Simon Hudon";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "https://github.com/unitb/latex-function-tables";
      url = "";
      synopsis = "Function table specifications in latex";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "latex-function-tables" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.HaTeX)
          (hsPkgs.semigroups)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.th-printf)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaTeX)
            (hsPkgs.process)
            (hsPkgs.latex-function-tables)
            (hsPkgs.template-haskell)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.latex-function-tables)
          ];
        };
      };
    };
  }