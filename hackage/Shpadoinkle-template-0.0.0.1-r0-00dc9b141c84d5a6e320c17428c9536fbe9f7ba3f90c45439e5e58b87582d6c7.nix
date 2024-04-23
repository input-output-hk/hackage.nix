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
      specVersion = "1.12";
      identifier = { name = "Shpadoinkle-template"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@protonmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "Read standard file formats into Shpadoinkle with Template Haskell";
      description = "This package provides TH functions to read files at compile time and embed them into Shpadoinkle views.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
          (hsPkgs."Shpadoinkle-backend-static" or (errorHandler.buildDepError "Shpadoinkle-backend-static"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."html-parse" or (errorHandler.buildDepError "html-parse"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "sample" = {
          depends = [
            (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
            (hsPkgs."Shpadoinkle-backend-static" or (errorHandler.buildDepError "Shpadoinkle-backend-static"))
            (hsPkgs."Shpadoinkle-template" or (errorHandler.buildDepError "Shpadoinkle-template"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."html-parse" or (errorHandler.buildDepError "html-parse"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }