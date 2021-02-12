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
      identifier = { name = "homplexity"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2015";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mjgajda/homplexity";
      url = "";
      synopsis = "Haskell code quality tool";
      description = "Homplexity aims to measure code complexity,\nwarning about fragments that might have higher defect probability\ndue to bad coding style on-the-large:\n* too large functions\n* too deeply nested conditions\n* too few comments";
      buildType = "Simple";
      };
    components = {
      exes = {
        "homplexity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hflags" or (errorHandler.buildDepError "hflags"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            ];
          buildable = true;
          };
        };
      };
    }