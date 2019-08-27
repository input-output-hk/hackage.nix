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
      identifier = { name = "himpy"; version = "0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "pyr@spootnik.org";
      author = "Pierre-Yves Ritschard";
      homepage = "https://github.com/pyr/himpy";
      url = "";
      synopsis = "multithreaded snmp poller for riemann";
      description = "Himpy provides a multi-threaded snmp poller which reports\nto riemann.\n\nPolled MIBs are grouped in recipes and produce relative results\nwhereever possible (for instance, the storage recipe reports percents).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "himpy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."NetSNMP" or (buildDepError "NetSNMP"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."type-level" or (buildDepError "type-level"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."protobuf" or (buildDepError "protobuf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        };
      };
    }