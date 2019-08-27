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
      specVersion = "1.18";
      identifier = { name = "rhine"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maths@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Programming with type-level clocks";
      description = "Rhine is a library for synchronous and asynchronous Functional Reactive Programming (FRP).\nIt separates the aspects of clocking, scheduling and resampling\nfrom each other, and ensures clock-safety on the type level.\nSignal processing units can be annotated by clocks,\nwhich hold the information when data will be\ninput, processed and output.\nDifferent components of the signal network\nwill become active at different times, or work\nat different rates.\nTo schedule the components and allow them to communicate,\nseveral standard scheduling and resampling solutions are implemented.\nOwn schedules and resampling buffers can be implemented in a reusable fashion.\nA (synchronous) program outputting \"Hello World!\" every tenth of a second looks like this:\n@flow \$ arrMSync_ (putStrLn \"Hello World!\") @@ (waitClock :: Millisecond 100)@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."dunai" or (buildDepError "dunai"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "HelloWorld" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rhine" or (buildDepError "rhine"))
            ];
          };
        "Demonstration" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rhine" or (buildDepError "rhine"))
            ];
          };
        };
      };
    }