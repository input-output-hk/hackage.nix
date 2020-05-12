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
      identifier = { name = "muon"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kaashif Hymabaccus";
      maintainer = "kaashifhymabaccus@gmail.com";
      author = "Kaashif Hymabaccus";
      homepage = "http://repos.kaashif.co.uk/darcs?r=muon;a=summary";
      url = "";
      synopsis = "Static blog generator";
      description = "Program which takes blog posts and pages written in Markdown and\ncompiles them into a tree of HTML pages which can then be served\nby any web server.\n\nMuon is similar in function to Hakyll <http://jaspervdj.be/hakyll/>\nbut has far fewer features (and dependencies) and is generally not\nready for use in production as of yet.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "muon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."markdown" or (errorHandler.buildDepError "markdown"))
            ];
          buildable = true;
          };
        };
      };
    }