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
      identifier = { name = "cond"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acurtis@spsu.edu, James Cranch <j.d.cranch@sheffield.ac.uk>";
      author = "Adam Curtis";
      homepage = "https://github.com/jcranch/cond";
      url = "";
      synopsis = "Basic conditional and boolean operators with monadic variants.";
      description = "This library provides:\n\n* Implementations of various overloaded conditional operations\n\n* Lifted monadic variants of those operations and common boolean operators\n\n* A typeclass for boolean algebras.\n\nFeel free to send ideas and suggestions for new conditional operators to the\nmaintainer.\n\nMonadic looping constructs are not included as part of this package, since the\nmonad-loops package has a fairly complete collection of them already.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }