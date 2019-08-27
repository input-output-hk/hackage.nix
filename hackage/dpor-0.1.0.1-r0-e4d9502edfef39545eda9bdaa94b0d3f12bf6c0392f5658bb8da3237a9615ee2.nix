let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        };
      };
    }