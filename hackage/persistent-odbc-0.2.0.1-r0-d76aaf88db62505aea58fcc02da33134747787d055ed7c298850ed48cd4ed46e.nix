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
    flags = { debug = false; tester = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "persistent-odbc"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "gbwey9@gmail.com";
      author = "Grant Weyburne";
      homepage = "https://github.com/gbwey/persistent-odbc";
      url = "";
      synopsis = "Backend for the persistent library using ODBC";
      description = "This package contains backends for persistent using ODBC.\nIt currently supports the following databases: MSSQL, MySql, Oracle, Sqlite, DB2, Postgres.\nUses HDBC-ODBC for accessing ODBC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.tester) [
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
          ];
        };
      exes = {
        "TestODBC" = {
          depends = (pkgs.lib).optionals (flags.tester) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."persistent-odbc" or (buildDepError "persistent-odbc"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }