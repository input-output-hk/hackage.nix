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
      specVersion = "2.4";
      identifier = { name = "readme-lhs"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/readme-lhs#readme";
      url = "";
      synopsis = "Literate programming support.";
      description = "This package provides support for literate programming in haskell, including:\n\n-   conversion between *.lhs and *.hs formats.\n\n-   insertion of program output into *.lhs and *.md for fast feedback in\ndevelopment.\n\n-   a simple wrapper for pandoc functionality.\n\n-   a stack template, `readme-lhs`\n\n== Usage\n\nThe best way to understand package functionality is to run the example.hs, with:\n\n> stack build --test --exec \"$(stack path --local-install-root)/bin/readme-lhs-example --file-watch\n\n> import Readme.Lhs\n> main =\n>   void $\n>   runOutput (\"other/readme_.md\", GitHubMarkdown) (\"readme.md\", GitHubMarkdown) $\n>   output \"example\" (Fence \"Simple example of an output\")\n\n== Template\n\nTo use the provided template, copy readme-lhs.hsfiles to a local directory, and try:\n\n> stack new xyzzy readme-lhs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "readme-lhs-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."readme-lhs" or (errorHandler.buildDepError "readme-lhs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."readme-lhs" or (errorHandler.buildDepError "readme-lhs"))
            ];
          buildable = true;
          };
        };
      };
    }