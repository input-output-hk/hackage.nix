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
      identifier = { name = "dbmigrations"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "";
      url = "";
      synopsis = "An implementation of relational database \"migrations\"";
      description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database. In\nparticular, this package lets the migration author\nexpress explicit dependencies between migrations\nand the management tool automatically installs or\nreverts migrations accordingly, using transactions\nfor safety.\nThis package is written to support a number of\ndifferent databases. For packages that support\nspecific databases using this library, see packages\nnamed \"dbmigrations-BACKEND\". Each package\nprovides an executable \"moo-BACKEND\" for managing\nmigrations. Usage information for the \"moo-\"\nexecutables can be found in \"MOO.TXT\" in this\npackage.\nThis package also includes a conformance test suite\nto ensure that backend implementations respect the\nlibrary's required semantics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."yaml-light" or (buildDepError "yaml-light"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ];
        };
      exes = {
        "moo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."dbmigrations" or (buildDepError "dbmigrations"))
            ];
          };
        };
      tests = {
        "dbmigrations-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dbmigrations" or (buildDepError "dbmigrations"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."yaml-light" or (buildDepError "yaml-light"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        };
      };
    }