{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
        ];
        buildable = true;
      };
      exes = {
        "_RandomAccounts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          buildable = if !flags.tests then false else true;
        };
      };
    };
  }