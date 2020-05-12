{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { examples = false; debug = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "FormalGrammars"; version = "0.3.1.2"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2017";
      homepage = "https://github.com/choener/FormalGrammars";
      url = "";
      synopsis = "(Context-free) grammars in formal language theory";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nContext-free grammars in formal language theory are sets of\nproduction rules, non-terminal and terminal symbols. This\nlibrary provides basic data types and functions to manipulate\nsuch grammars.\n\nGrammars can be defined in a small domain-specific language\nthat is very close to typical CFG notation. The DSL parser can\neasily be extended. Grammar products, for example, are\nimplemented as a single additional sub-parser.\n\nThis library also provides the machinery that transforms an\nInside grammar into the corresponding Outside grammar.\n\nStarting with version 0.2.1 it is possible to write multiple\ncontext-free grammars within this framework.\n\nIn addition, TemplateHaskell and QuasiQuoting functionality\nallow embedding thusly defined grammars in Haskell programs.\nADPfusion then turns such a grammar into an efficient dynamic\nprogram. It is also possible to generate Haskell modules that\ncontain the resulting grammar, signature and algebra product.\n\nAlternatives are ansi- or LaTeX-based pretty-printing for users\nthat want to implement their CFG in another language than\nHaskell.\n\nFormal background can be found in a number of papers which are\ngiven in the README.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      exes = {
        "GrammarPP" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            ];
          buildable = true;
          };
        "NussinovFG" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            ];
          buildable = if flags.examples then true else false;
          };
        "NeedlemanWunschFG" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            ];
          buildable = if flags.examples then true else false;
          };
        "TriNeedleFG" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            ];
          buildable = true;
          };
        };
      };
    }