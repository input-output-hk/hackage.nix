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
      identifier = { name = "dpor"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "A generic implementation of dynamic partial-order reduction (DPOR) for testing arbitrary models of concurrency.";
      description = "We can characterise the state of a concurrent computation by\nconsidering the ordering of dependent events. This is a partial\norder: independent events can be performed in any order without\naffecting the result. DPOR is a technique for computing these\npartial orders at run-time, and only testing one total order for\neach partial order. This cuts down the amount of work to be done\nsignificantly. In particular, this package implemented bounded\npartial-order reduction, which is a further optimisation. Only\nschedules within some *bound* are considered.\n\n* DPOR with no schedule bounding is __complete__, it /will/ find all\ndistinct executions!\n\n* DPOR with schedule bounding is __incomplete__, it will only find\nall distinct executions /within the bound/!\n\n__Caution:__ The fundamental assumption behind DPOR is that the\n*only* source of nondeterminism in your program is the\nscheduler. Or, to put it another way, if you execute the same\nprogram with the same schedule twice, you get the same result. If\nyou are using this library in combination with something which\nperforms I/O, be *very* certain that this is the case!\n\nSee the <https://github.com/barrucadu/dejafu README> for more\ndetails.\n\nFor details on the algorithm, albeit presented in a very imperative\nway, see /Bounded partial-order reduction/, K. Coons, M. Musuvathi,\nand K. McKinley (2013), available at\n<http://research.microsoft.com/pubs/202164/bpor-oopsla-2013.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      };
    }