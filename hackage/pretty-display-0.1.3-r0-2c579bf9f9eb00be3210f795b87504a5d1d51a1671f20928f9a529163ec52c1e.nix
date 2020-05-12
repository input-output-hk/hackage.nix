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
      identifier = { name = "pretty-display"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/githubuser/pretty-display";
      url = "";
      synopsis = "Typeclass for human-readable display";
      description = "Typeclass for human-readable display. Provides tools for\nworking interactively within ghci.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
        buildable = true;
        };
      exes = {
        "pretty-display-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-display" or (errorHandler.buildDepError "pretty-display"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        };
      tests = {
        "pretty-display-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-display" or (errorHandler.buildDepError "pretty-display"))
            ];
          buildable = true;
          };
        };
      };
    }