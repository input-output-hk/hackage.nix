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
    flags = {
      dev = false;
      dump = false;
      exe = false;
      prof = false;
      threaded = true;
      };
    package = {
      specVersion = "1.24";
      identifier = { name = "lol-typing"; version = "1.20160822"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+lol@autogeree.net>";
      author = "Julien Moutinho <julm+lol@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Type inferencer for LOL (λω language)";
      description = "WARNING: this is a research program\nwritten as I learn and explore /type inferencing/:\nplease understand well by yourself whatever you may take from it;\nany question or contribution being welcome :-)\n\nThis package implements /type inferencing/\nby manipulating /type constraints/\nthrough 3 successive phases:\n1. the 'Collect' phase collects them from some expression,\n2. the 'Order' phase modifies the order in which they will be solved,\n3. the 'Solver' phase solves them according to the logic\nof some /type inference rules/.\n\nSo far, the principles within these phases\nare mainly a rewrite of Bastiaan Heeren's\n<https://hackage.haskell.org/package/Top Top>,\nusing my own code conventions and ideals of simplicity.\nThe most notable change being the use of Roman Cheplyaka's\n<https://hackage.haskell.org/package/monad-classes monad-classes>\n(a little bit augmented):\nto handle the 'Monad' stack building a 'Solver'\n(instead of a homegrown machinery I could not understand well).\nAt this point, only a /bottom-up/ 'Collect', a no-op 'Order'\nand a 'Greedy' 'Solver' are implemented, supporting:\n/monomorphic types/ ('Monotype'),\n/parametric polymorphism/ ('Polytype'),\n/type class polymorphism/ ('Class'),\nand /type synonyms/ ('Synotype').\nThe quite understandable thesis of Bastiaan Heeren\nexplains a lot of this in details:\n<http://www.open.ou.nl/bhr/TopQuality.pdf Top Quality Type Error Messages>.\n\nThe <https://hackage.haskell.org/package/uuagc Attribute Grammar System of Universiteit Utrecht>\nis used to demonstrate how to collect /type constraints/ from an expression ('Expr'),\nand then how to transform this /implicitely typed/ expression into an /explicitely typed/\n<https://hackage.haskell.org/package/lol-calculus lol-calculus> expression\n\nSee also: the <https://hackage.haskell.org/package/helium helium> compiler.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc or (errorHandler.setupDepError "uuagc")))
        (hsPkgs.buildPackages.uuagc-cabal or (pkgs.buildPackages.uuagc-cabal or (errorHandler.setupDepError "uuagc-cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."lol-calculus" or (errorHandler.buildDepError "lol-calculus"))
          (hsPkgs."monad-classes" or (errorHandler.buildDepError "monad-classes"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
          (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
          ];
        buildable = true;
        };
      tests = {
        "lol-typing-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."lol-calculus" or (errorHandler.buildDepError "lol-calculus"))
            (hsPkgs."lol-typing" or (errorHandler.buildDepError "lol-typing"))
            (hsPkgs."monad-classes" or (errorHandler.buildDepError "monad-classes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }