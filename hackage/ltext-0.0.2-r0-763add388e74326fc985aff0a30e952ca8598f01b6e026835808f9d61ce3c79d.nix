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
        name = "ltext";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Higher-order file applicator";
      description = "λtext is a general-purpose templating utility for text files.\n\nTurn plaintext files into lambdas -\nfunction application then becomes concatenation.\n\nPlease see the <https://github.com/ltext/ltext github page> for more details.\n\nAll credits go to Martin Grabmueller's <http://hackage.haskell.org/package/AlgorithmW AlgorithmW>\npackage for the type inference algorithm used in λtext.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "ltext" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.deepseq)
            (hsPkgs.template-haskell)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }