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
      identifier = { name = "snaplet-lss"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/lss";
      url = "";
      synopsis = "Lexical Style Sheets - Snap Web Framework adaptor.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lss" or (errorHandler.buildDepError "lss"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      tests = {
        "test-snaplet-lss" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec-snap" or (errorHandler.buildDepError "hspec-snap"))
            (hsPkgs."hspec2" or (errorHandler.buildDepError "hspec2"))
            (hsPkgs."snaplet-lss" or (errorHandler.buildDepError "snaplet-lss"))
            ];
          buildable = true;
          };
        };
      };
    }