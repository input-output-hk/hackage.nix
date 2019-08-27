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
    flags = { example = false; dummy = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "helics"; version = "0.3.0"; };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/helics";
      url = "";
      synopsis = "New Relic® agent SDK wrapper for Haskell.";
      description = "New Relic® agent SDK wrapper for Haskell.\n\nPlease get New Relic Agent SDK(<https://docs.newrelic.com/docs/agents/agent-sdk/using-agent-sdk/getting-started-agent-sdk>) before you install this package.\n\nCopy include\\/lib dir of SDK to system include\\/lib path, or specify extra include\\/lib path when installing this package.\n\n@\ncabal insstall helics --extra-lib-dirs=\$SDK_LIB_DIR --extra-include-dir=\$SDK_INCLUDE_DIR\n@\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (!(flags.dummy && !system.isLinux)) [
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."bytestring-show" or (buildDepError "bytestring-show"))
          ];
        libs = (pkgs.lib).optionals (!(flags.dummy && !system.isLinux)) [
          (pkgs."newrelic-collector-client" or (sysDepError "newrelic-collector-client"))
          (pkgs."newrelic-transaction" or (sysDepError "newrelic-transaction"))
          (pkgs."newrelic-common" or (sysDepError "newrelic-common"))
          ];
        build-tools = (pkgs.lib).optional (!(flags.dummy && !system.isLinux)) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")));
        };
      exes = {
        "helics-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."helics" or (buildDepError "helics"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }