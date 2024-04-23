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
      specVersion = "1.6";
      identifier = { name = "windowslive"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joshhoyt@gmail.com";
      author = "Josh Hoyt";
      homepage = "http://patch-tag.com/repo/windowslive";
      url = "";
      synopsis = "Implements Windows Live Web Authentication and\nDelegated Authentication";
      description = "Implements functions for initiating and processing\nWeb Authentication requests, as well as Delegated\nAuthentication. See\n<http://msdn.microsoft.com/en-us/library/bb404787.aspx>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
        ];
        buildable = true;
      };
      exes = { "test" = { buildable = true; }; };
    };
  }