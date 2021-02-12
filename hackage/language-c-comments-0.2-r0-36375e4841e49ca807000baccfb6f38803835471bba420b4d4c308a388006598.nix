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
      specVersion = "1.2.3";
      identifier = { name = "language-c-comments"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghulette@gmail.com";
      author = "Geoff Hulette";
      homepage = "http://github.com/ghulette/language-c-comments";
      url = "";
      synopsis = "Extracting comments from C code";
      description = "Language C Comments is a Haskell library for extracting\ncomments from C code.  It will parse both single- and\nmulti-line comments, and correctly handles split lines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
        buildable = true;
        };
      };
    }