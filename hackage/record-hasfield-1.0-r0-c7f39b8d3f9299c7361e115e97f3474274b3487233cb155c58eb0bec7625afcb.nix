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
      specVersion = "1.18";
      identifier = { name = "record-hasfield"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Adam Gundry and Neil Mitchell 2018-2019";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/record-hasfield#readme";
      url = "";
      synopsis = "A version of GHC.Records as available in future GHCs.";
      description = "This package provides a version of \"GHC.Records\" as it will be after the implementation of\n<https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0042-record-set-field.rst GHC proposal #42>,\nplus some helper functions over it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "record-hasfield-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            ];
          buildable = true;
          };
        };
      };
    }