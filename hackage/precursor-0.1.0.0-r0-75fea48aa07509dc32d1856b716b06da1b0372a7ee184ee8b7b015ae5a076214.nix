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
      specVersion = "1.10";
      identifier = { name = "precursor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/precursor#readme";
      url = "";
      synopsis = "Prelude replacement";
      description = "Features\n\n[No more 'String']\n'String' is removed in favor of lazy 'Data.Text.Lazy.Text'.\n\n[No more 'Num']\nThe 'Num' typeclass is now just for types which can be converted from\ninteger literals.\n\n['Semigroup's]\n'Semigroup's are now in scope by default, as well as some useful\nwrappers.\n\n['Semiring's]\nA 'Semiring' has the operations '+' and '*', and the members 'one'\nand 'zero'. 'Bool' is a 'Semiring', as is 'Integer', etc. 'Num' is\n/not/ a superclass of 'Semiring'.\n\n[Sensibly strict]\nSeveral functions, such as 'foldl', 'sum', 'product', etc. are strict\nas default.\n\n[No unnecessary 'Monad's]\nFunctions such as 'Control.Monad.sequence', 'Control.Monad.>>', and\n'Control.Monad.replicateM' are removed in favor of the equivalent\n'sequenceA', '*>', and 'replicateA' on 'Applicative's.\n\n[Fewer partial functions]\nFunctions like 'head', 'last', 'minimum', etc. now return 'Nothing'\nwhen called on empty structures. 'tail' and 'init' return empty\nlists when called on empty lists.\n\n[Data structures]\n'Map' and 'Set' (the strict variants) are now in scope by default,\nwith a minimal, non-colliding aliased api.\n\n[Transformers]\n'State' is now in scope by default.\n\n[Debugging]\nHandy functions like 'trace', 'traceShow', and 'notImplemented' are\nin scope by default. They give warnings when used so they can't be\nforgotten.\n\n[Other handy functions]\nAn /O(n*log n)/ 'nub', 'foldr2', 'converge', 'bool', and others.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
        ];
        buildable = true;
      };
      tests = {
        "precursor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."precursor" or (errorHandler.buildDepError "precursor"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }