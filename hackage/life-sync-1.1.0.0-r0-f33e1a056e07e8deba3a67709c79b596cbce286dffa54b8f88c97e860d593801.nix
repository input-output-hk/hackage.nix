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
      specVersion = "2.4";
      identifier = { name = "life-sync"; version = "1.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2018-2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov, Veronika Romashkina";
      homepage = "https://github.com/kowainik/life-sync";
      url = "";
      synopsis = "Synchronize personal configs across multiple machines.";
      description = "Synchronize personal configs across multiple machines.\nSee README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."relude" or (buildDepError "relude"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."colourista" or (buildDepError "colourista"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."shellmet" or (buildDepError "shellmet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tomland" or (buildDepError "tomland"))
          (hsPkgs."validation-selective" or (buildDepError "validation-selective"))
          ];
        buildable = true;
        };
      exes = {
        "life" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."life-sync" or (buildDepError "life-sync"))
            ];
          buildable = true;
          };
        };
      tests = {
        "life-sync-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."life-sync" or (buildDepError "life-sync"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (buildDepError "hspec-hedgehog"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }