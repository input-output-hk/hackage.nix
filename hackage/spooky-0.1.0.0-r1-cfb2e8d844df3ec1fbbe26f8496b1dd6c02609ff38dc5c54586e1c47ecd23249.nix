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
    flags = { untyped = false; typed = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "spooky"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "isaac.shapira@platonic.systems";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "Unified API for phantom typed newtypes and type aliases";
      description = "In scenarios where newtypes are not well supported, we may need\nto use type aliases instead for various reasons. This means we\ngive away type safety and static analysis tooling. We can get this\nsafety back with Spooky. When we compile with -f typed, we\nget a type check using newtypes. When compiled without the flag\nwe get the same code type checking with type aliases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }