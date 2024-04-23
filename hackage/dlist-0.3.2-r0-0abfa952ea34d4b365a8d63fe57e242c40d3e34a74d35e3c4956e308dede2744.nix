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
      identifier = { name = "dlist"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "2006-7 Don Stewart";
      maintainer = "dons@galois.com";
      author = "Don Stewart ";
      homepage = "http://www.cse.unsw.edu.au/~dons/dlist.html";
      url = "";
      synopsis = "Differences lists";
      description = "Differences lists: a list-like type supporting O(1) append.\nThis is particularly useful for efficient logging and pretty\nprinting, (e.g. with the Writer monad), where list append\nquickly becomes too expensive.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }