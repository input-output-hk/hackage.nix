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
      identifier = { name = "pub"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parnell Springmeyer <parnell@digitalmentat.com>";
      author = "Parnell Springmeyer <parnell@digitalmentat.com>";
      homepage = "";
      url = "";
      synopsis = "Pipe stdin to a redis pub/sub channel";
      description = "`pub` is an executable for piping data from stdin to a specified\nRedis pub/sub channel.\n\nA typical use for this tool is to tail a log file, match a specific\nline with grep, and pipe it into Redis where multiple consumers can\ndo something different with each incoming log line:\n\n> tail -F /var/log/somelogfile.log | grep \"tracker.gps.parsed\" | pub loglines";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pub" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hedis" or (buildDepError "hedis"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."groom" or (buildDepError "groom"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "sub" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hedis" or (buildDepError "hedis"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."groom" or (buildDepError "groom"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }