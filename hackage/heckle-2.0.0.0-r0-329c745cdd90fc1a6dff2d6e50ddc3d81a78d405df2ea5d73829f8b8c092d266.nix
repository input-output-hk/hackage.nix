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
      identifier = { name = "heckle"; version = "2.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "2016rshah@gmail.com";
      author = "Rushi Shah";
      homepage = "https://github.com/2016rshah/heckle";
      url = "";
      synopsis = "Jekyll in Haskell";
      description = "Markdown and HTML are the standard tools used to write your every day tech blog with. But they have pretty weak support for embedding mathematical formulas, and are not conducive to writing for an extended period of time. Plus, they aren't even Turing complete! So use BlaTeX to start blogging in LaTeX! (Oh btw you can still use Markdown too tho lol).\n\nBlaTeX is basically a static site generator (like Jekyll) that lets you write your blog in LaTeX (and MD), specify a layout file for the homepage, and publish it to github pages.\n\nTo get started, check out <https://github.com/2016rshah/BlaTeX#how-to>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "heckle" = {
          depends = [
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dates" or (errorHandler.buildDepError "dates"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }