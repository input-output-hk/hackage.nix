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
      specVersion = "1.8";
      identifier = { name = "test-simple"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko, 2012";
      maintainer = "boriss@gmail.com";
      author = "Boris Sukholitko";
      homepage = "";
      url = "";
      synopsis = "Simple Perl inspired testing ";
      description = "Test.Simple provides simple, Perl inspired primitives for easy testing. It outputs test\nresults in TAP format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."state-plus" or (errorHandler.buildDepError "state-plus"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-simple" or (errorHandler.buildDepError "test-simple"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }