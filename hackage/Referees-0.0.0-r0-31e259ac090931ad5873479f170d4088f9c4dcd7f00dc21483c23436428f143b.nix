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
    flags = { debug = false; documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Referees"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Pablo Couto 2014";
      maintainer = "Pablo Couto <pablo@infty.in>";
      author = "Pablo Couto <pablo@infty.in>";
      homepage = "https://github.com/pablocouto/Referees";
      url = "";
      synopsis = "A utility for computing distributions of material to review among reviewers.";
      description = "A utility for computing distributions of material to review among reviewers.\n@Referees@ takes into consideration the areas of expertise of the referees,\nthe number of items that they accept for review, the languages they\nunderstand, and the minimum and maximum number of copies we may want to\ndistribute per each item to review.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."glpk-hs" or (buildDepError "glpk-hs"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (buildDepError "hscolour"));
        };
      exes = {
        "referees" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Referees" or (buildDepError "Referees"))
            ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (buildDepError "hscolour"));
          };
        };
      };
    }