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
    flags = { dev = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "rhine"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maths@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Programming with type-level clocks";
      description = "Rhine is a library for synchronous and asynchronous Functional Reactive Programming (FRP).\nIt separates the aspects of clocking, scheduling and resampling\nfrom each other, and ensures clock-safety on the type level.\nSignal processing units can be annotated by clocks,\nwhich hold the information when data will be\ninput, processed and output.\nDifferent components of the signal network\nwill become active at different times, or work\nat different rates.\nTo schedule the components and allow them to communicate,\nseveral standard scheduling and resampling solutions are implemented.\nOwn schedules and resampling buffers can be implemented in a reusable fashion.\nA (synchronous) program outputting \"Hello World!\" every tenth of a second looks like this:\n@flow $ constMCl (putStrLn \"Hello World!\") \\@\\@ (waitClock :: Millisecond 100)@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          (hsPkgs."dunai" or (errorHandler.buildDepError "dunai"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          (hsPkgs."time-domain" or (errorHandler.buildDepError "time-domain"))
          (hsPkgs."monad-schedule" or (errorHandler.buildDepError "monad-schedule"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
            (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
            (hsPkgs."monad-schedule" or (errorHandler.buildDepError "monad-schedule"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }