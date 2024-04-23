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
      specVersion = "1.0";
      identifier = { name = "helisp"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Jason Dagit <dagit@codersbase.com>";
      homepage = "http://www.codersbase.com/index.php/Helisp";
      url = "";
      synopsis = "An incomplete Elisp compiler";
      description = "This is an incomplete compiler for Emacs Lisp;\nthe source might be of interest to others.\n\nThe Darcs repository can be found at\n<http://projects.codersbase.com/repos/helisp>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "helisp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = true;
        };
      };
    };
  }