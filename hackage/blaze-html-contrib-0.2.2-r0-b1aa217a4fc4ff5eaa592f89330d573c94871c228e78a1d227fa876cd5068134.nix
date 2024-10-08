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
      specVersion = "1.2";
      identifier = { name = "blaze-html-contrib"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2011 Chris Done";
      maintainer = "adit@adit.io";
      author = "Aditya Bhargava, Chris Done";
      homepage = "https://github.com/egonSchiele/blaze-html-contrib";
      url = "";
      synopsis = "Some contributions to add handy things to blaze html.";
      description = "Some contributions to add handy things to blaze html. Please\nsend your contributions as pull requests. See homepage for basic usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
        ];
        buildable = true;
      };
    };
  }