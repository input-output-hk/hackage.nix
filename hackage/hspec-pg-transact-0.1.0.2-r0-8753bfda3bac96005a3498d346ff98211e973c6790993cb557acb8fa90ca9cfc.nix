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
      identifier = { name = "hspec-pg-transact"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/pg-transact-hspec#readme";
      url = "";
      synopsis = "Helpers for creating database tests with hspec and pg-transact";
      description = "Helpers for creating database tests with hspec and pg-transact\n\n@hspec-pg-transact@ utilizes @tmp-postgres@ to automatically and connect to a temporary instance of @postgres@ on a random port.\n\n>\n> describeDB migrate \"Query” \$\n>   itDB \"work\" \$ do\n>     execute_ [sql|\n>       INSERT INTO things\n>       VALUES (‘me’) |]\n>     query_ [sql|\n>       SELECT name\n>        FROM things |]\n>       `shouldReturn` [Only \"me\"]\n\nIn the example above @describeDB@ wraps @describe@ with a @beforeAll@ hook for creating a db and a @afterAll@ hook for stopping a db.\n\nTests can be written with @itDB@ which is wrapper around @it@ that uses the passed in @Connection@ to run a db transaction automatically for the test.\n\nThe libary also provides a few other functions for more fine grained control over running transactions in tests.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."tmp-postgres" or (buildDepError "tmp-postgres"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."pg-transact" or (buildDepError "pg-transact"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          ];
        };
      };
    }