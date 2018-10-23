{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tasty-th";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Oscar Finnsson & Emil Nordling & Benno Fünfstück";
      homepage = "http://github.com/bennofs/tasty-th";
      url = "";
      synopsis = "Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell.";
      description = "A fork of of test-framework-th modified to use tasty instead of test-framework.";
      buildType = "Simple";
    };
    components = {
      "tasty-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tasty)
          (hsPkgs.language-haskell-extract)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }