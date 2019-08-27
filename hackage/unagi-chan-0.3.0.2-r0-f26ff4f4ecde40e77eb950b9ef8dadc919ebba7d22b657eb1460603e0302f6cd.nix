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
    flags = { compare-benchmarks = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unagi-chan"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "Fast concurrent queues with a Chan-like API, and more";
      description = "This library provides implementations of concurrent FIFO queues (for both\ngeneral boxed and primitive unboxed values) that are fast, perform well\nunder contention, and offer a Chan-like interface. The library may be of\nlimited usefulness outside of x86 architectures where the fetch-and-add\ninstruction is not available.\n\nWe export several variations of our design; some support additional\nfunctionality while others try for lower latency by removing features or\nmaking them more restrictive (e.g. in the @Unboxed@ variants).\n\n- @Unagi@: a general-purpose near drop-in replacement for @Chan@.\n\n- @Unagi.Unboxed@: like @Unagi@ but specialized for primitive types; this\nmay perform better if a queue grows very large.\n\n- @Unagi.Bounded@: a bounded variant with blocking and non-blocking writes,\nand other functionality where a notion of the queue's capacity is\nrequired.\n\n- @Unagi.NoBlocking@: lowest latency implementations for when blocking\nreads aren't required.\n\n- @Unagi.NoBlocking.Unboxed@: like @Unagi.NoBlocking@ but for primitive\ntypes.\n\nSome of these may be deprecated in the future if they are found to provide\nlittle performance benefit, or no unique features; you should benchmark and\nexperiment with them for your use cases, and please submit pull requests\nfor additions to the benchmark suite that reflect what you find.\n\nHere is an example benchmark measuring the time taken to concurrently write\nand read 100,000 messages, with work divided amongst increasing number of\nreaders and writers, comparing against the top-performing queues in the\nstandard libraries. The inset graph shows a zoomed-in view on the\nimplementations here.\n\n<<http://i.imgur.com/J5rLUFn.png>>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      exes = {
        "dev-example" = {
          depends = (pkgs.lib).optionals (!(!flags.dev)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          };
        };
      benchmarks = {
        "single" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ] ++ (pkgs.lib).optional (flags.compare-benchmarks) (hsPkgs."stm" or (buildDepError "stm"));
          };
        "multi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."async" or (buildDepError "async"))
            ] ++ (pkgs.lib).optional (flags.compare-benchmarks) (hsPkgs."stm" or (buildDepError "stm"));
          };
        };
      };
    }