{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "parsix"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "https://github.com/ollef/parsix";
      url = "";
      synopsis = "Parser combinators with slicing, error recovery, and syntax highlighting";
      description = "A parser combinator library based on 'parsers' (like 'trifecta') with slicing, error recovery, and syntax highlighted diagnostics";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fingertree)
          (hsPkgs.mtl)
          (hsPkgs.parsers)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.parsix)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          };
        };
      };
    }