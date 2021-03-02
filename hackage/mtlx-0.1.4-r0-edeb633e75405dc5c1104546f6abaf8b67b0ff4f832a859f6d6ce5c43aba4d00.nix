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
      identifier = { name = "mtlx"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marks@ittc.ku.edu";
      author = "Mark Snyder";
      homepage = "";
      url = "";
      synopsis = "Monad transformer library with type indexes,\nproviding 'free' copies.";
      description = "A monad transformer library with type indexes, which allows the\nprogrammer to get a distinct copy of one of the monads without\nreproducing definitions and instances.  It currently\nsupports IdentityX, ReaderX, StateX, WriterX, RWSX, and ErrorX\nmonads (and their transformer versions).  All these copies can be\ncombined into a transformer stack, including any of the original\nmtl monads. Inspired by the original mtl.  That library was\ninspired by the paper /Functional Programming with Overloading and\nHigher-Order Polymorphism/, by Mark P Jones\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>), Advanced\nSchool of Functional Programming, 1995.  See the Examples.hs file\nfor usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }