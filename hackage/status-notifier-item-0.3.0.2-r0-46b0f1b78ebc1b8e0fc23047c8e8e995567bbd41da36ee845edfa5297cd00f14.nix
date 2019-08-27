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
      specVersion = "1.12";
      identifier = { name = "status-notifier-item"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/IvanMalison/status-notifier-item#readme";
      url = "";
      synopsis = "A wrapper over the StatusNotifierItem/libappindicator dbus specification";
      description = "Please see the README on Github at <https://github.com/IvanMalison/status-notifier-item#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-to-vector" or (buildDepError "bytestring-to-vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dbus" or (buildDepError "dbus"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "sni-cl-tool" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."status-notifier-item" or (buildDepError "status-notifier-item"))
            ];
          };
        "status-notifier-item-static" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."status-notifier-item" or (buildDepError "status-notifier-item"))
            ];
          };
        "status-notifier-watcher" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."dbus-hslogger" or (buildDepError "dbus-hslogger"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."status-notifier-item" or (buildDepError "status-notifier-item"))
            ];
          };
        };
      };
    }