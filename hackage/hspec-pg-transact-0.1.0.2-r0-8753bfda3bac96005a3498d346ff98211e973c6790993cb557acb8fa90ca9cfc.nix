{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."tmp-postgres" or ((hsPkgs.pkgs-errors).buildDepError "tmp-postgres"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."pg-transact" or ((hsPkgs.pkgs-errors).buildDepError "pg-transact"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          ];
        buildable = true;
        };
      };
    }