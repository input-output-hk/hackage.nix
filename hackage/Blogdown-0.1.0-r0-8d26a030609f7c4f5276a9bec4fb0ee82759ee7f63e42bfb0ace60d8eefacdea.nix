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
      identifier = { name = "Blogdown"; version = "0.1.0"; };
      license = "AGPL-3.0-only";
      copyright = "(c) 2017 Alex Becker";
      maintainer = "acbecker@uchicago.edu";
      author = "Alex Becker";
      homepage = "";
      url = "";
      synopsis = "A markdown-like markup language designed for blog posts";
      description = "A library and executable that implement a modified, extended version of Markdown designed for writing blog posts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          ];
        buildable = true;
        };
      exes = {
        "Blogdown" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      };
    }