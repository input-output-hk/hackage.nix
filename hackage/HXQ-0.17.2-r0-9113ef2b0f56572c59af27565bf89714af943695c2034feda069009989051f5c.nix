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
    flags = { mysql = false; sqlite = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HXQ"; version = "0.17.2"; };
      license = "BSD-3-Clause";
      copyright = "2008, 2009 Leonidas Fegaras";
      maintainer = "fegaras@cse.uta.edu";
      author = "Leonidas Fegaras";
      homepage = "http://lambda.uta.edu/HXQ/";
      url = "";
      synopsis = "A Compiler from XQuery to Haskell";
      description = "HXQ is a fast and space-efficient compiler from XQuery (the standard\nquery language for XML) to embedded Haskell code. The translation is\nbased on Haskell templates. It also provides an interpreter for\nevaluating XQueries from input and an optional database connectivity\nusing HDBC with MySQL/ODBC or sqlite3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          ] ++ (if flags.mysql
          then [
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc"))
            ]
          else (pkgs.lib).optionals (flags.sqlite) [
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            ]);
        };
      exes = {
        "xquery" = {
          depends = if flags.mysql
            then [
              (hsPkgs."HDBC" or (buildDepError "HDBC"))
              (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc"))
              ]
            else (pkgs.lib).optionals (flags.sqlite) [
              (hsPkgs."HDBC" or (buildDepError "HDBC"))
              (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
              ];
          };
        };
      };
    }