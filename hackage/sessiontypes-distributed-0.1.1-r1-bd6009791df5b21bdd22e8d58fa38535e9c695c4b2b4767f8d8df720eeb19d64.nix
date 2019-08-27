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
      identifier = { name = "sessiontypes-distributed"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2017 Ferdinand van Walree";
      maintainer = "Ferdinand van Walree";
      author = "Ferdinand van Walree";
      homepage = "https://github.com/Ferdinand-vW/sessiontypes-distributed#readme";
      url = "";
      synopsis = "Session types distributed";
      description = "This package serves as a wrapper over both the Cloud Haskell library (distributed-process) and the sessiontypes library.\nIt provides an interpreter for evaluating session typed programs to Cloud Haskell programs and exposes several combinators for spawning sessions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."sessiontypes" or (buildDepError "sessiontypes"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."rank1dynamic" or (buildDepError "rank1dynamic"))
          ];
        };
      tests = {
        "sessiontypes-distributed-spawn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sessiontypes-distributed" or (buildDepError "sessiontypes-distributed"))
            (hsPkgs."sessiontypes" or (buildDepError "sessiontypes"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            ];
          };
        "sessiontypes-distributed-lifted" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sessiontypes-distributed" or (buildDepError "sessiontypes-distributed"))
            (hsPkgs."sessiontypes" or (buildDepError "sessiontypes"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            ];
          };
        };
      };
    }