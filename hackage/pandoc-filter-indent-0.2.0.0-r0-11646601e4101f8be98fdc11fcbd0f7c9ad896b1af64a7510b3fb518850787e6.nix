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
      identifier = { name = "pandoc-filter-indent"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "AllRightsReserved";
      maintainer = "mjgajda@migamake.com";
      author = "Michał J. Gajda";
      homepage = "https://github.com/mjgajda/pandoc-filter-indent#readme";
      url = "";
      synopsis = "Pandoc filter formatting Haskell code fragments using GHC lexer.";
      description = "Formats marked code fragments, and allows `pandoc` to safely process rest of your literate program:\n\n> ```{.haskell}\n\nUsage:\n> stack install pandoc-filter-indent\n> pandoc --filter pandoc-filter-indent -f input.md -o output.pdf\n> pandoc --filter pandoc-filter-indent -f input.md -o output.html\n\nUsing `lhs2TeX` is somewhat inconvenient on large Markdown documents\nprocessed with `pandoc`, since it assumes that it can freely redefine everything.\nIt is also pretty heavy on learning.\n\nSo instead we have a simple Pandoc filter that is only applied to `CodeFragment`s\nand creates tabular code structures from indentation.\nIt uses GHC lexer to assure that latest features are always parsed correctly.\n\nPlease see the README on GitHub at <https://github.com/mjgajda/pandoc-filter-indent#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."ghc-syntax-highlighter" or (errorHandler.buildDepError "ghc-syntax-highlighter"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-filter-indent" = {
          depends = [
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."ghc-syntax-highlighter" or (errorHandler.buildDepError "ghc-syntax-highlighter"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
            (hsPkgs."pandoc-filter-indent" or (errorHandler.buildDepError "pandoc-filter-indent"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "pandoc-filter-indent-test" = {
          depends = [
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."ghc-syntax-highlighter" or (errorHandler.buildDepError "ghc-syntax-highlighter"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
            (hsPkgs."pandoc-filter-indent" or (errorHandler.buildDepError "pandoc-filter-indent"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }