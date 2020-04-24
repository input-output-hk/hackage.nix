{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "consistent"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Eventually consistent STM transactions.";
      description = "Eventually consistent STM transactions.\n\\\nConsistent provides eventually consistent atomic transactions, by delaying\nupdates until no threads is mutating a shared variable.\n\\\nThis comes at a cost of having a separate TVar for every thread, but has the\nadvantage that no thread will ever lock or retry except for the manager actor\nresponsible for performing the updates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."consistent" or ((hsPkgs.pkgs-errors).buildDepError "consistent"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
            ];
          buildable = true;
          };
        };
      };
    }