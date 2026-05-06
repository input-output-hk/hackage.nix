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
      specVersion = "3.0";
      identifier = { name = "mealy-arrow"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mealy-arrow contributors";
      author = "mealy-arrow contributors";
      homepage = "";
      url = "";
      synopsis = "Monadic Mealy machines with Arrow, ArrowChoice, and ArrowLoop";
      description = "A monadic Mealy machine in the coalgebraic (continuation-passing)\nrepresentation:\n.\n@\nnewtype Auto m a b = Auto { step :: a -> m (b, Auto m a b) }\n@\n.\nEach step consumes an input, produces an output in some monad @m@,\nand returns the next state as a continuation. The monad parameter\ncontrols the effect discipline: 'Identity' for pure machines, 'IO'\nfor effectful ones.\n.\nInstances: 'Category', 'Arrow', 'ArrowChoice', 'ArrowLoop',\n'Profunctor', 'Functor'. Smart constructors: 'stateless', 'stateful',\n'constAuto'. Natural transformation: 'hoistAuto'.\n.\n== How is this different from the @mealy@ package?\n.\nThe Hackage package\n<https://hackage.haskell.org/package/mealy mealy> provides a pure,\nexistentially-quantified inject\\/step\\/extract triple designed for\nonline statistics (moving averages, regression). It has 'Category'\nand 'Profunctor' instances but no 'Arrow', no 'ArrowChoice', no\n'ArrowLoop', and no monadic effects.\n.\n@mealy-arrow@ provides the Nu (greatest fixpoint) representation\nwith full Arrow instances and a monad parameter. It is designed\nfor interactive systems: terminal UIs, protocol handlers,\ngame logic, API clients — anything where each step may have\neffects and the machine's control flow may branch.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
      exes = {
        "mealy-arrow-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mealy-arrow" or (errorHandler.buildDepError "mealy-arrow"))
          ];
          buildable = true;
        };
      };
      tests = {
        "mealy-arrow-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mealy-arrow" or (errorHandler.buildDepError "mealy-arrow"))
          ];
          buildable = true;
        };
      };
    };
  }