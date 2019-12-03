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
      specVersion = "2.2";
      identifier = { name = "reflex-libtelnet"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2019 Jack Kelly";
      maintainer = "jack@jackkelly.name";
      author = "Jack Kelly";
      homepage = "https://git.sr.ht/~jack/reflex-libtelnet";
      url = "";
      synopsis = "Reflex bindings for libtelnet";
      description = "Wraps https://git.sr.ht/~jack/libtelnet-haskell , so you\ncan handle telnet data streams using reflex\n'Reflex.Event's. See @README.md@ or\n\"Reflex.LibTelnet\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
          (hsPkgs."dependent-sum-template" or (buildDepError "dependent-sum-template"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."libtelnet" or (buildDepError "libtelnet"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          ];
        buildable = true;
        };
      };
    }