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
      specVersion = "1.2";
      identifier = { name = "narc"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ezra@ezrakilty.net";
      author = "Ezra e. k. Cooper";
      homepage = "http://ezrakilty.net/projects/narc";
      url = "";
      synopsis = "Query SQL databases using Nested Relational Calculus embedded in Haskell.";
      description = "Narc is an embedded language for querying SQL databases,\nwhich permits using the ``nested relational'' model, a more\nflexible model than the traditional relational model of SQL\ndatabases. In spite of this richer data model, queries are\ntransformed into SQL to run against standard databases.\n\nTo use the language, express a query using the combinators\nlike @foreach@, @table@, @having@, @singleton@ and so on.\nWrap this in a call to @narcToSQLString@ to get a string\nthat can be sent to a SQL database.\n\nTo send a query directly to an HDBC connection, import\nthe module @Database.Narc.HDBC@ and use its @run@ function,\npassing it an HDBC connection and a Narc query. The result\nis an IO action that returns a 2-D list of result values\nin HDBC's usual format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          ];
        };
      };
    }