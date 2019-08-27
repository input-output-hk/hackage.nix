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
      specVersion = "1.8";
      identifier = { name = "sodium"; version = "0.10.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2012-2013";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Sodium Reactive Programming (FRP) System";
      description = "A general purpose Reactive Programming (FRP) system. This is part of a project to\nimplement reactive libraries with similar interfaces across a range of programming\nlanguages at <http://reactiveprogramming.org/>\n\n* Goals include simplicity and completeness.\n\n* Applicative style: Event implements Functor and Behaviour implements Applicative.\n\n* Instead of the common approach where inputs are fed into the front of a monolithic\n\\'reactimate\\', Sodium allows you to push inputs in from scattered places in IO.\n\n* Integration with IO: Extensible to provide lots of scope for lifting IO into FRP\nlogic.\n\n* Push-based imperative implementation.\n\nSee the /examples/ directory for test cases and examples.\n\nChanges:\n\n* 0.2.0.0 - Fix some value recursion deadlocks and improve docs;\n\n* 0.3.0.0 - Add mergeWith, make cross asynchronous;\n\n* 0.4.0.0 - API revamp to remove an excess type variable. Parallelism stuff to be rethought;\n\n* 0.5.0.0 - Improved tests cases + add Freecell example, API tweaks;\n\n* 0.5.0.1 - Internal improvements;\n\n* 0.5.0.2 - Fix multiple memory leaks;\n\n* 0.6     - Minor API changes, particular with accum;\n\n* 0.6.0.1 - ghc-7.8 compatibility;\n\n* 0.6.0.2 - Fix memory leak - see memory-test-8 & memory-test-8a;\n\n* 0.7.0.0 - Add split primitive.\n\n* 0.8.0.0 - Add executeIO primitive.\n\n* 0.9.0.0 - Rename changes to updates. Rename values to value.\n\n* 0.10.0.0 - Add Monoid instance to Event - thanks Finlay Thompson.\n\n* 0.10.0.1 - Fix finalizer issue that caused breakage in ghc-7.8 - thanks Luite Stegeman.\n\n* 0.10.0.2 - Second attempt.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }