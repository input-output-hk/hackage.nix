{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "blocking-transactions"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lane@downstairspeople.org";
      author = "Christopher Lane Hinson";
      homepage = "http://www.downstairspeople.org/git/blocking-transactions.git";
      url = "";
      synopsis = "Composable, blocking transactions.";
      description = "A variable type (BVar), monad (BTM), and arrow\n(BTA), which provide fast, atomic, composable, blocking\ninter-thread communication.  Blocking transactions are\nstrictly less expressive than software transactional\nmemory, but may be more efficient under very high\ncontention.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ];
        buildable = true;
        };
      exes = {
        "_RandomAccounts" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }