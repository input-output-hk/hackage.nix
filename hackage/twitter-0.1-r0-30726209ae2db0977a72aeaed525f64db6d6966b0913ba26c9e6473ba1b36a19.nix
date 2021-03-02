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
      identifier = { name = "twitter"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Eidhof <ce@tupil.com>";
      author = "Chris Eidhof";
      homepage = "";
      url = "";
      synopsis = "A Haskell-based CLI Twitter client";
      description = "A really basic twitter client. ";
      buildType = "Simple";
      };
    components = {
      exes = {
        "twitter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }