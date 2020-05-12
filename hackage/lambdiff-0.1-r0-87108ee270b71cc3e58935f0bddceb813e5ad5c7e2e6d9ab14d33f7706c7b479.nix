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
      specVersion = "1.4";
      identifier = { name = "lambdiff"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamie@bu.mp";
      author = "Jamie Turner";
      homepage = "https://github.com/jamwt/lambdiff.git";
      url = "";
      synopsis = "Diff Viewer";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdiff" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
            ];
          buildable = true;
          };
        };
      };
    }