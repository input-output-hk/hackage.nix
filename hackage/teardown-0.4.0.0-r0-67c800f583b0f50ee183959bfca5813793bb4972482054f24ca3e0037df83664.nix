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
      identifier = { name = "teardown"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "© 2017, 2018 Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-teardown#readme";
      url = "";
      synopsis = "Build composable components for your application with clear teardown semantics";
      description = "The teardown library allows you to reliably execute cleanup sub-routines for\nallocated resources when a program is initialized; it:\n\n* Ensures that teardown sub-routines are executed /exactly/ once, even on the\nscenario where cleanup is invoked multiple times\n\n* Ensures that if errors occur on the execution of one teardown, the error\ndoes not propagate to other sub-routines; effectively keeping them isolated.\n\n* Requires every sub-routine to be documented at creation time; thus helping\ntracing your application structure.\n\n* Allows tracing the teardown of your application, how is structured, how much\ntime it takes to execute, and what component (if any) failed to finalize.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."typed-process" or (buildDepError "typed-process"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "teardown-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."teardown" or (buildDepError "teardown"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "teardown-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."teardown" or (buildDepError "teardown"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }