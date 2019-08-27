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
      identifier = { name = "unagi-chan"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "Fast and scalable concurrent queues for x86, with a Chan-like API";
      description = "This library provides implementations of concurrent FIFO queues (for both\ngeneral boxed and primitive unboxed values) that are fast, perform well\nunder contention, and offer a Chan-like interface. The library may be of\nlimited usefulness outside of x86 architectures where the fetch-and-add\ninstruction is not available.\n\nHere is an example benchmark measuring the time taken to write and then\nread 100,000 messages, with work divided amongst increasing number of\nreaders and writers (time in ms), comparing against the top-performing\nqueues in the standard libraries.\n\n<<http://i.imgur.com/safKkCP.png>>\n\nAnd here is a view on just the unagi implementations.\n\n<<http://i.imgur.com/K6s2pXj.png>>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
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