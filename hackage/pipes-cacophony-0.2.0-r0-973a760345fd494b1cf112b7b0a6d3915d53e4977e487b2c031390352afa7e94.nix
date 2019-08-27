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
    flags = { hlint = true; build-examples = false; llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-cacophony"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jgalt@centromere.net";
      author = "John Galt";
      homepage = "https://github.com/centromere/pipes-cacophony";
      url = "";
      synopsis = "Pipes for Noise-secured network connections.";
      description = "A set of pipes to secure network connections with the\n<https://github.com/trevp/noise/blob/master/noise.md Noise> protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cacophony" or (buildDepError "cacophony"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          ];
        };
      exes = {
        "echo-server" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cacophony" or (buildDepError "cacophony"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-aeson" or (buildDepError "pipes-aeson"))
            (hsPkgs."pipes-cacophony" or (buildDepError "pipes-cacophony"))
            (hsPkgs."pipes-network" or (buildDepError "pipes-network"))
            (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unix-time" or (buildDepError "unix-time"))
            ];
          };
        "echo-client" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cacophony" or (buildDepError "cacophony"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-aeson" or (buildDepError "pipes-aeson"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-cacophony" or (buildDepError "pipes-cacophony"))
            (hsPkgs."pipes-network" or (buildDepError "pipes-network"))
            (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      };
    }