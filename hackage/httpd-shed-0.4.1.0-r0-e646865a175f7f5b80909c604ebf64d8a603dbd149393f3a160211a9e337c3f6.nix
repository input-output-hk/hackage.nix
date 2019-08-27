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
    flags = { buildexamples = false; network-uri = true; network-bsd = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "httpd-shed"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Andy Gill";
      maintainer = "Ganesh Sittampalam";
      author = "Andy Gill, Brandon Moore, Henning Thielemann, John Van Enk.";
      homepage = "";
      url = "";
      synopsis = "A simple web-server with an interact style API";
      description = "This web server promotes a Request to IO Response function\ninto a local web server. The user can decide how to interpret\nthe requests, and the library is intended for implementing Ajax APIs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ]) ++ (if flags.network-bsd
          then [
            (hsPkgs."network-bsd" or (buildDepError "network-bsd"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        };
      exes = { "httpd-shed-test" = {}; };
      };
    }