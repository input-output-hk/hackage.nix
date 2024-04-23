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
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "smallcheck"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Colin Runciman <Colin.Runciman@cs.york.ac.uk>";
      author = "Colin Runciman";
      homepage = "";
      url = "";
      synopsis = "Another lightweight testing library in Haskell.";
      description = "SmallCheck is similar to QuickCheck (Claessen and Hughes 2000-) but\ninstead of testing for a sample of randomly generated values, SmallCheck\ntests properties for all the finitely many values up to some depth,\nprogressively increasing the depth used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
    };
  }