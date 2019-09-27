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
      specVersion = "1.8";
      identifier = { name = "majordomo"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mark@ninjablocks.com, sean@ninjablocks.com";
      author = "Mark Wotton, Sean Seefried";
      homepage = "";
      url = "";
      synopsis = "Majordomo protocol for ZeroMQ";
      description = "The Majordomo Protocol (MDP) defines a reliable\nservice-oriented request-reply dialog between a\nset of client applications, a broker and a set of\nworker applications. MDP covers presence,\nheartbeating, and service-oriented request-reply\nprocessing. It originated from the Majordomo\npattern defined in Chapter 4 of the Guide.\nhttp://rfc.zeromq.org/spec:7";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."zeromq-haskell" or (buildDepError "zeromq-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        buildable = true;
        };
      exes = {
        "mdp_client" = {
          depends = [
            (hsPkgs."majordomo" or (buildDepError "majordomo"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "echoworker" = {
          depends = [
            (hsPkgs."majordomo" or (buildDepError "majordomo"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."threads" or (buildDepError "threads"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }