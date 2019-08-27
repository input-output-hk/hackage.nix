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
    flags = {
      hlint = true;
      vectors = true;
      build-examples = false;
      llvm = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "cacophony"; version = "0.9.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jgalt@centromere.net";
      author = "John Galt";
      homepage = "https://github.com/centromere/cacophony";
      url = "";
      synopsis = "A library implementing the Noise protocol.";
      description = "This library implements the <https://github.com/trevp/noise/blob/master/noise.md Noise>\nprotocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."monad-coroutine" or (buildDepError "monad-coroutine"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "echo-server" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cacophony" or (buildDepError "cacophony"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-simple" or (buildDepError "network-simple"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unix-time" or (buildDepError "unix-time"))
            ];
          };
        "echo-client" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cacophony" or (buildDepError "cacophony"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-simple" or (buildDepError "network-simple"))
            (hsPkgs."unix" or (buildDepError "unix"))
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
        "vectors" = {
          depends = (pkgs.lib).optionals (!(!flags.vectors)) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cacophony" or (buildDepError "cacophony"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cacophony" or (buildDepError "cacophony"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."memory" or (buildDepError "memory"))
            ];
          };
        };
      };
    }