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
      identifier = { name = "distribution-opensuse"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/distribution-opensuse/";
      url = "";
      synopsis = "Types, functions, and tools to manipulate the openSUSE distribution";
      description = "Types, functions, and tools to manipulate the openSUSE distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hsemail" or (buildDepError "hsemail"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec-class" or (buildDepError "parsec-class"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."turtle" or (buildDepError "turtle"))
          ];
        };
      exes = {
        "guess-changelog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."distribution-opensuse" or (buildDepError "distribution-opensuse"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ];
          };
        };
      tests = {
        "test-strip-space" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distribution-opensuse" or (buildDepError "distribution-opensuse"))
            ];
          };
        };
      };
    }