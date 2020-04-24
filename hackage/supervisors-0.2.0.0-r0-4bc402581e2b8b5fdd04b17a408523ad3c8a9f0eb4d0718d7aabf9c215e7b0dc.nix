{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "supervisors"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://github.com/zenhack/haskell-supervisors";
      url = "";
      synopsis = "Monitor groups of threads with non-hierarchical lifetimes.";
      description = "The @supervisors@ package provides a useful abstraction for managing the\ngroups of Haskell threads, which may not have a strictly hierarchical\nstructure to their lifetimes.\n\nConcretely, the library provides a `Supervisor` construct, which can be\nused to safely spawn threads while guaranteeing that:\n\n* When the supervisor is killed, all of the threads it supervises will be\nkilled.\n* Child threads can terminate in any order, and memory usage will always\nbe proportional to the number of *live* supervised threads.\n\nOne way to think of it is that @supervisors@ is to @async@ as\n@resourcet@ is to @bracket@.\n\nNote that this package is EXPERIMENTAL; it needs more careful testing before\nI can earnestly recommend relying on it.\n\nSee the README and module documentation for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."supervisors" or ((hsPkgs.pkgs-errors).buildDepError "supervisors"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }