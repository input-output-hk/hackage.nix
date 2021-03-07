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
      identifier = { name = "css-selectors"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Willem Van Onsem";
      maintainer = "hapytexeu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/css-selectors#readme";
      url = "";
      synopsis = "Parsing, rendering and manipulating css selectors in Haskell.";
      description = "A library for parsing, manipulating, and rendering css selectors (not css files,\njust the selectors).\n\nIt has a /quasiquoter/ to enable Haskell to validate the css selector at compile\ntime.\n\nCurrently the css grammar is implemented /without/ the pseudo-classes,\npseudo-elements and negations. One can furthermore calculate the specificity of\na css-selector, and thus perform an analysis over what css-selector will take\nprecedence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
        buildable = true;
        };
      tests = {
        "css-selectors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."css-selectors" or (errorHandler.buildDepError "css-selectors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }