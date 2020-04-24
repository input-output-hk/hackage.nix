{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sodium"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2012-2013";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Sodium Reactive Programming (FRP) System";
      description = "A general purpose Reactive Programming (FRP) system. This is part of a project to\nimplement reactive libraries with similar interfaces across a range of programming\nlanguages at <http://reactiveprogramming.org/>\n\n* Goals include simplicity and completeness.\n\n* Applicative style: Event implements Functor and Behaviour implements Applicative.\n\n* Instead of the common approach where inputs are fed into the front of a monolithic\n\\'reactimate\\', Sodium allows you to push inputs in from scattered places in IO.\n\n* Integration with IO: Extensible to provide lots of scope for lifting IO into FRP\nlogic.\n\n* Push-based imperative implementation.\n\nSee the /examples/ directory for test cases and examples.\n\nChanges:\n\n* 0.2.0.0 - Fix some value recursion deadlocks and improve docs;\n\n* 0.3.0.0 - Add mergeWith, make cross asynchronous;\n\n* 0.4.0.0 - API revamp to remove an excess type variable. Parallelism stuff to be rethought;\n\n* 0.5.0.0 - Improved tests cases + add Freecell example, API tweaks;\n\n* 0.5.0.1 - Internal improvements;\n\n* 0.5.0.2 - Fix multiple memory leaks;\n\n* 0.6     - Minor API changes, particular with accum;\n\n* 0.6.0.1 - ghc-7.8 compatibility;\n\n* 0.6.0.2 - Fix memory leak - see memory-test-8 & memory-test-8a;\n\n* 0.7.0.0 - Add split primitive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }