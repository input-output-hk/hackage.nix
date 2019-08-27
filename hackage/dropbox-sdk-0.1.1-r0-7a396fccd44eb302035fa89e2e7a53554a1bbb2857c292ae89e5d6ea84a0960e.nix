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
      identifier = { name = "dropbox-sdk"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kannan Goundan <kannan@dropbox.com>";
      author = "Kannan Goundan <kannan@dropbox.com>";
      homepage = "http://github.com/cakoose/dropbox-sdk";
      url = "";
      synopsis = "A (very preliminary) library to access the Dropbox HTTP API.";
      description = "The Dropbox HTTP API provides ways for applications to access\nusers' Dropbox accounts programmatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."urlencoded" or (buildDepError "urlencoded"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-enumerator" or (buildDepError "http-enumerator"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."tls-extra" or (buildDepError "tls-extra"))
          (hsPkgs."certificate" or (buildDepError "certificate"))
          ];
        };
      };
    }