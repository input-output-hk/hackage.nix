{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "th-alpha";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Julian K. Arni";
      maintainer = "Julian K. Arni <jkarni@gmail.com>";
      author = "Julian K. Arni";
      homepage = "https://github.com/jkarni/th-alpha";
      url = "";
      synopsis = "Alpha equivalence for TH Exp";
      description = "Compare TH expressions (or clauses, patterns, etc.) for alpha equivalence.\nThat is, compare for equality modulo the renaming of bound variables.\n\n>>> areExpAEq [| \\x -> x |] [| \\y -> y |]\nTrue\n\nThis can be useful when for instance testing libraries that use Template\nHaskell - usually correctness is only defined up to alpha equivalence.";
      buildType = "Simple";
    };
    components = {
      "th-alpha" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.th-desugar)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.th-alpha)
            (hsPkgs.template-haskell)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }