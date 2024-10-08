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
      specVersion = "1.10";
      identifier = { name = "RANSAC"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Anthony Cowley 2012";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "The RANSAC algorithm for parameter estimation.";
      description = "The RANdom SAmple Consensus (RANSAC) algorithm for\nestimating the parameters of a mathematical model\nfrom a data set. See\n<http://en.wikipedia.org/wiki/RANSAC> for more\ninformation.\n\nSee @tests/LinearFit.hs@ in the package contents for\nan example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }