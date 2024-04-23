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
      identifier = { name = "language-c99-util"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Frank Dedden <dev@dedden.net>";
      author = "Frank Dedden";
      homepage = "";
      url = "";
      synopsis = "Utilities for language-c99.";
      description = "This library contains a number of utility functions and wrappers for the\n'language-c99' package. For an actual high-level approach to writing C99\nprograms, see 'language-c99-simple'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."language-c99" or (errorHandler.buildDepError "language-c99"))
        ];
        buildable = true;
      };
    };
  }