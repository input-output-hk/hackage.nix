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
      specVersion = "1.18";
      identifier = { name = "rhine"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maths@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Programming with type-level clocks";
      description = "Rhine is a library for synchronous and asynchronous Functional Reactive Programming (FRP).\nIt separates the aspects of clocking, scheduling and resampling\nfrom each other, and ensures clock-safety on the type level.\nSignal processing units can be annotated by clocks,\nwhich hold the information when data will be\ninput, processed and output.\nDifferent components of the signal network\nwill become active at different times, or work\nat different rates.\nTo schedule the components and allow them to communicate,\nseveral standard scheduling and resampling solutions are implemented.\nOwn schedules and resampling buffers can be implemented in a reusable fashion.\nA (synchronous) program outputting \"Hello World!\" every tenth of a second looks like this:\n@flow \$ constMCl (putStrLn \"Hello World!\") \\@\\@ (waitClock :: Millisecond 100)@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dunai" or (errorHandler.buildDepError "dunai"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }