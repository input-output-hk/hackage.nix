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
      identifier = { name = "differential"; version = "0.1.2.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/differential#readme";
      url = "";
      synopsis = "Finds out whether an entity comes from different distributions (statuses).";
      description = "Uses statistical tests to find whether an entity comes from one or two distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."inline-r" or (buildDepError "inline-r"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."sparse-linear-algebra" or (buildDepError "sparse-linear-algebra"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "differential" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."differential" or (buildDepError "differential"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."inline-r" or (buildDepError "inline-r"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }