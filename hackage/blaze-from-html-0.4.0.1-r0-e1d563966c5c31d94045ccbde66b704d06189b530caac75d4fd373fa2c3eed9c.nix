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
      specVersion = "1.6";
      identifier = { name = "blaze-from-html"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com, simon.meier@inf.ethz.ch";
      author = "Jasper Van der Jeugt, Simon Meier";
      homepage = "http://jaspervdj.be/blaze-html";
      url = "";
      synopsis = "Tool to convert HTML to BlazeHtml code.";
      description = "Tool that converts HTML files to Haskell code, ready to be\nused with the BlazeHtml library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "blaze-from-html" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
          buildable = true;
        };
      };
    };
  }