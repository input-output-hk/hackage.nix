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
      identifier = { name = "scp-streams"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thu@hypered.io";
      author = "Vo Minh Thu";
      homepage = "https://github.com/noteed/scp-streams";
      url = "";
      synopsis = "An SCP protocol implementation.";
      description = "An SCP protocol implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        };
      exes = {
        "scp-streams" = {
          depends = [
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."scp-streams" or (buildDepError "scp-streams"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."sha-streams" or (buildDepError "sha-streams"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        "scp-broken-upload" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."scp-streams" or (buildDepError "scp-streams"))
            ];
          };
        };
      tests = {
        "run-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."scp-streams" or (buildDepError "scp-streams"))
            ];
          };
        };
      };
    }