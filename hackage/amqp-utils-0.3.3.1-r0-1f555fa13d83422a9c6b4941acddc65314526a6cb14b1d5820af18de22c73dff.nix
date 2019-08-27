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
      identifier = { name = "amqp-utils"; version = "0.3.3.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fd@taz.de";
      author = "Frank Doepper";
      homepage = "";
      url = "";
      synopsis = "Generic Haskell AMQP Consumer";
      description = "AMQP consumer which can\ncreate a temporary queue and attach it to an exchange, or\nattach to an existing queue;\ndisplay header and body info;\nsave message bodies to files;\ncall a callback script.\nAMQP publisher with file, line-by-line and\nhotfolder capabilities.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "konsum" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."x509-system" or (buildDepError "x509-system"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."amqp" or (buildDepError "amqp"))
            ];
          };
        "agitprop" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."x509-system" or (buildDepError "x509-system"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."amqp" or (buildDepError "amqp"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."hinotify" or (buildDepError "hinotify"))
            (hsPkgs."magic" or (buildDepError "magic"))
            ];
          };
        };
      };
    }