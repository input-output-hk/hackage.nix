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
      identifier = { name = "stylist"; version = "2.6.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Adrian Cochrane copyright 2019";
      maintainer = "alcinnz@lavabit.com";
      author = "Adrian Cochrane";
      homepage = "";
      url = "";
      synopsis = "Apply CSS styles to a document tree.";
      description = "Reusable CSS engine allowing you to parse CSS stylesheets and to query the style properties for a given element.\nIt covers CSS parsing, selection, cascade, and inheritance, whilst allowing you to declaratively define supported properties and at-rules.\nThe hope is that this would be useful for implementing new browser engines, web development tools, and UI frameworks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ];
        buildable = true;
        };
      tests = {
        "test-stylist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            ];
          buildable = true;
          };
        };
      };
    }