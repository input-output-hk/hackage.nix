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
      identifier = { name = "io-throttle"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2014, Rodrigo Setti";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "http://github.com/rodrigosetti/io-throttle";
      url = "";
      synopsis = "Limit number of IO actions started per second";
      description = "Limit the number of tasks started per second. The throttle function will\nrun all actions concurrently but only starting a certain number per\nsecond. It will wait for all tasks and return the results in a list.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."threads" or (buildDepError "threads"))
          (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
          ];
        };
      tests = {
        "test-io-threads" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."io-throttle" or (buildDepError "io-throttle"))
            ];
          };
        };
      };
    }