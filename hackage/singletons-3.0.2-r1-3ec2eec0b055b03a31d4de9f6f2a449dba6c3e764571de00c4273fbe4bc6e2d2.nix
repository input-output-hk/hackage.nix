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
      specVersion = "1.24";
      identifier = { name = "singletons"; version = "3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Richard Eisenberg <rae@cs.brynmawr.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      homepage = "http://www.github.com/goldfirere/singletons";
      url = "";
      synopsis = "Basic singleton types and definitions";
      description = "@singletons@ contains the basic types and definitions needed to support\ndependently typed programming techniques in Haskell. This library was\noriginally presented in /Dependently Typed Programming with Singletons/,\npublished at the Haskell Symposium, 2012.\n(<https://richarde.dev/papers/2012/singletons/paper.pdf>)\n\n@singletons@ is intended to be a small, foundational library on which other\nprojects can build. As such, @singletons@ has a minimal dependency\nfootprint and supports GHCs dating back to GHC 8.0. For more information,\nconsult the @singletons@\n@<https://github.com/goldfirere/singletons/blob/master/README.md README>@.\n\nYou may also be interested in the following related libraries:\n\n* The @singletons-th@ library defines Template Haskell functionality that\nallows /promotion/ of term-level functions to type-level equivalents and\n/singling/ functions to dependently typed equivalents.\n\n* The @singletons-base@ library uses @singletons-th@ to define promoted and\nsingled functions from the @base@ library, including the \"Prelude\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "singletons-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            ];
          buildable = true;
          };
        };
      };
    }