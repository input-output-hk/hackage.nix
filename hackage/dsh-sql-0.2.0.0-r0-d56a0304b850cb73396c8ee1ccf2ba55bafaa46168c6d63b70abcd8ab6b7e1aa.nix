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
    flags = { debuggraph = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "dsh-sql"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@etc-network.de";
      author = "Alexander Ulrich";
      homepage = "";
      url = "";
      synopsis = "SQL backend for Database Supported Haskell (DSH)";
      description = "This package provides an SQL backend for Database Supported Haskell\n(DSH). It provides the ability to generate SQL code and execute DSH\nqueries on supported SQL database engines. Currently, only\nPostgreSQL is supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."DSH" or (buildDepError "DSH"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."Decimal" or (buildDepError "Decimal"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."algebra-dag" or (buildDepError "algebra-dag"))
          (hsPkgs."algebra-sql" or (buildDepError "algebra-sql"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."set-monad" or (buildDepError "set-monad"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "sqltests" = {
          depends = [
            (hsPkgs."DSH" or (buildDepError "DSH"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dsh-sql" or (buildDepError "dsh-sql"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }