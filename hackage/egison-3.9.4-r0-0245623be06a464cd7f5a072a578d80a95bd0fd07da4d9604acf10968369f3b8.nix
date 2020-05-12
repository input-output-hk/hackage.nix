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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "egison"; version = "3.9.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Satoshi Egi <egi@egison.org>";
      author = "Satoshi Egi, Ryo Tanaka, Takahisa Watanabe, Kentaro Honda, Mayuko Kori, Momoko Hattori";
      homepage = "http://www.egison.org";
      url = "";
      synopsis = "Programming language with non-linear pattern-matching against non-free data";
      description = "An interpreter for Egison, a **pattern-matching-oriented**, purely functional programming language.\nWe can directly represent pattern-matching against lists, multisets, sets, trees, graphs and any kind of data types.\n\nWe can find Egison programs in @lib@ and @sample@ directories.\nThis package also include Emacs Lisp file @elisp/egison-mode.el@.\n\nWe can do non-linear pattern-matching against non-free data types in Egison.\nAn non-free data type is a data type whose data have no canonical form, a standard way to represent that object.\nIt enables us to write elegant programs.\n\n/Twin Primes/\n\nWe can use pattern-matching for enumeration.\nThe following code enumerates all twin primes from the infinite list of prime numbers with pattern-matching!\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/twin-primes-w700.png>>\n\n/Poker Hands/\n\nThe following code is the program that determines poker-hands written in Egison.\nAll hands are expressed in a single pattern.\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/poker-hands-w700.png>>\n\n/Mahjong/\n\nWe can write a pattern even against mahjong tiles.\nWe modularize patterns to represent complex mahjong hands.\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/mahjong-w700.png>>\n\n/Graphs/\n\nWe can pattern-match against graphs.\nWe can write program to solve the travelling salesman problem in a single pattern-matching expression.\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/salesman-w700.png>>\n\nAren't thsese exciting?\nWe can run these demonstrations on our website!\nPlease view and try more demonstrations!\n\n<http://www.egison.org>\n\nEgison makes programming dramatically simple.\nPlease enjoy Egison!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).gt "8.0")) (hsPkgs."fail" or (errorHandler.buildDepError "fail"));
        buildable = true;
        };
      exes = {
        "egison" = {
          depends = [
            (hsPkgs."egison" or (errorHandler.buildDepError "egison"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).gt "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        "egison-translate" = {
          depends = [
            (hsPkgs."egison" or (errorHandler.buildDepError "egison"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."egison" or (errorHandler.buildDepError "egison"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."egison" or (errorHandler.buildDepError "egison"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }