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
      identifier = { name = "blogination"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Very simple static blog software";
      description = "Blogination reads files written in markdown and outputs xhtml. Supports syntax highlighting. Philosophy is simplicity. Can be used as a library, in a web application for example. Intended use is a simple commandline program to run after changes are made. Ideally use darcs or git with it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          (hsPkgs."higherorder" or (errorHandler.buildDepError "higherorder"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "blogination" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ];
          buildable = true;
          };
        };
      };
    }